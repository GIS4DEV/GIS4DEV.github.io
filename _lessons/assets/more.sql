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
