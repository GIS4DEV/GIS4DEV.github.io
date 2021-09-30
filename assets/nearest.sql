/* project OSM POI points to UTM zone 37 south */
CREATE TABLE osm_points AS
SELECT osm_id, st_transform(way, 32737)::geometry(point, 32737) AS geom, name, amenity
FROM planet_osm_point;
/* afterward, remember to create a spatial index for osm_points */

/* find the closest university to each POI */
SELECT osm.*, uniname, st_distance(a.unigeom, osm.geom) AS dist
FROM osm_points AS osm CROSS JOIN lateral (
	SELECT unipoint.name AS uniname, unipoint.geom AS unigeom
	FROM unipoint
	ORDER BY unipoint.geom <-> osm.geom
	LIMIT 1) a

/* reproject wards into UTM zones */
create table wardsutm as
select fid, st_transform(geom, 32737)::geometry(multipolygon,32737) as geom, ward_name, ward_code, district_n, district_c
from wards

/* UNION overlay of wards with flood zones */
/* this is excrutiatingly slow because of the complexity of Flood zones.
   a wiser strategy would use st_subdivide to simplify the Flood zones */

/* subdivide the flood layer to get much smaller polygons */
create table flood_divide as
select st_subdivide(geom, 20)::geometry(polygon, 32737) as geom, flood_leve
from flood


SELECT wardsutm.ward_name, flood.flood_leve, ST_INTERSECTION(wardsutm.geom, flood.geom) as geom
FROM wardsutm INNER JOIN flood ON ST_INTERSECTS(wardsutm.geom, flood.geom)

UNION

SELECT w.ward_name, NULL flood_leve,
  coalesce(st_multi(st_collectionextract(st_difference(w.geom,
    (SELECT st_union(f.geom)
     FROM flood f
     WHERE st_overlaps(w.geom, f.geom))
  )))) as geom
FROM wardsutm w

UNION

SELECT NULL ward_name, f.flood_leve,
  coalesce(st_multi(st_collectionextract(st_difference(f.geom,
    (SELECT st_union(w.geom)
     FROM flood f
     WHERE st_overlaps(f.geom, w.geom))
  )))) as geom
FROM flood f

/* UNION overlay in PostGIS example from stackexchange */
SELECT  df1,  df2, ST_INTERSECTION(a.geom, b.geom) shape
FROM polys1 a join polys b ON ST_INTERSECTS(a.geom, b.geom)

union

SELECT df1,null df2,coalesce(st_multi(st_collectionextract(st_difference(a.g,(SELECT st_union(b.geom)

                                                                    FROM polys2 b
                                                                    WHERE st_dwithin(a.geom, b.geom, .001) )), 3)), a.geom) shape
FROM polys1 a

union

SELECT null df1,df2,coalesce(st_multi(st_collectionextract(st_difference(b.geom,(SELECT st_union(a.geom)
                                                                    FROM polys1 a
                                                                    WHERE st_dwithin(a.geom, b.geom, .001) )), 3)), b.geom) shape
FROM polys2 b


/* References:
https://postgis.net/workshops/postgis-intro/knn.html
https://medium.com/kkempin/postgresqls-lateral-join-bfd6bd0199df
https://gis.stackexchange.com/questions/302433/seeking-postgis-equivalent-to-geopandas-union-overlay
*/
