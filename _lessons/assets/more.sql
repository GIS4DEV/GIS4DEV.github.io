/* DELETE DUPLICATE GEOMETRIES */

	delete from mytable 
	where myidcolumn IN (
	    select t1.myidcolumn 
	    from mytable mt1, mytable mt2
	    where st_equals(mt1.the_geom, mt2.the_geom)
	    and mt1.myidcolumn < mt2.myidcolumn
	)
	
/* FIND MINIMUM DISTANCE TO ANY FEATURE IN ANOTHER TABLE */

select geom, wname,  min(std) as minstd
 from
(select wardflood.*, unipoint.name as uniname, st_distance(wardflood.geom, unipoint.geom) as std
from wardflood left outer join unipoint
on st_dwithin(wardflood.geom, unipoint.geom, 10000)) as a
group by wname, geom


/* add a unique integer ID to a table */

ALTER TABLE <table name> ADD COLUMN id SERIAL PRIMARY KEY;

/* count points in polygons */

SELECT id, count( field from points )



/* Suggestion for a GIS UNION operation on two layers
from  https://gis.stackexchange.com/questions/302086/postgis-union-of-two-polygons-layers */
select distinct a.geom1 from
(select distinct(st_dump(st_collect(t1.geom,t2.geom))).geom as geom1
 from t1 inner join t2 on not st_intersects(t1.geom,t2.geom)) a inner join 
(select distinct (st_dump(st_collect(st_symdifference(t1.geom,t2.geom),st_intersection(t1.geom,t2.geom)))).geom
from t1 ,t2 where st_intersects(t1.geom,t2.geom)) b
on not st_intersects(a.geom1,b.geom)
union
select (st_dump(st_collect(st_symdifference(t1.geom,t2.geom),st_intersection(t1.geom,t2.geom)))).geom
from t1 inner join t2 on st_intersects(t1.geom,t2.geom)
