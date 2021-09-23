/* DELETE DUPLICATE GEOMETRIES */

	DELETE FROM mytable
	WHERE myidcolumn IN (
	    SELECT t1.myidcolumn
	    FROM mytable mt1, mytable mt2
	    WHERE st_equals(mt1.the_geom, mt2.the_geom)
	    AND mt1.myidcolumn < mt2.myidcolumn
	)
	
/* FIND MINIMUM DISTANCE TO ANY FEATURE IN ANOTHER TABLE */

SELECT geom, wname,  min(std) AS minstd
 FROM
(SELECT wardflood.*, unipoint.name AS uniname, st_distance(wardflood.geom, unipoint.geom) AS std
FROM wardflood LEFT OUTER JOIN unipoint
ON st_dwithin(wardflood.geom, unipoint.geom, 10000)) AS a
GROUP BY wname, geom


/* add a unique integer ID to a table */
ALTER TABLE <table name> ADD COLUMN id SERIAL PRIMARY KEY;

/* count points in polygons */
SELECT id, count( <points field without nulls> )
FROM points INNER JOIN polygons
ON st_within(points.geom, polygons.geom) ) AS a
GROUP BY id;


/* count points in polygons with multiple queries */


/* Suggestion for a GIS UNION operation on two layers
from  https://gis.stackexchange.com/questions/302086/postgis-union-of-two-polygons-layers */
SELECT DISTINCT a.geom1 FROM
(SELECT distinct(st_dump(st_collect(t1.geom,t2.geom))).geom AS geom1
 FROM t1 INNER JOIN t2 ON NOT st_intersects(t1.geom,t2.geom)) a INNER JOIN
(SELECT DISTINCT (st_dump(st_collect(st_symdifference(t1.geom,t2.geom),st_intersection(t1.geom,t2.geom)))).geom
FROM t1 ,t2 WHERE st_intersects(t1.geom,t2.geom)) b
ON NOT st_intersects(a.geom1,b.geom)
UNION
SELECT (st_dump(st_collect(st_symdifference(t1.geom,t2.geom),st_intersection(t1.geom,t2.geom)))).geom
FROM t1 INNER JOIN t2 ON st_intersects(t1.geom,t2.geom)
