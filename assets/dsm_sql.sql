/*
Structure Query Language Instructions for Dar es Salaam Flood Risk Analysis
Prepared by Joseph Holler, 2021
Resources:
	Panopto: https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=beda027d-3b8e-4700-9ae7-acf4012bdc0e
	ResilienceAcademy: https://geonode.resilienceacademy.ac.tz/
	Humanitarian Data Exchange Population by Ward: https://data.humdata.org/dataset/population-by-ward-adm3
*/

/* FIRST, follow the Panopto videos to get connected to the database,
get connected to ResilienceAcademy's web feature services, and load data into the database.
The final video, OSM to PostGIS, is opotional! */

/* SECOND, try downloading the population by ward excel table on your own from
the Humanitarian Data Exchange resource above. Load it into QGIS first, and then
into PostGIS, giving it the table name: census
Remember to use only lower case table names and field names! */

/* NOW, we're ready to start using SQL queries to investigate the data!
Our ultimate goal will be to find the population density of wards and the percentage of area flooded in each ward, but we'll take some diversions along the way to learn more about spatial SQL.

I suggest opening this file in Notepad++ or Atom to see the text styled according to the SQL language.
Each SQL query ends in a semicolon; and you can copy these to DB Manager and execute (F5 key) one at a time to see the results.

/* Write notes in comment blocks offset by slashes and asterisks */
-- or as comments at the end of a line followed by two dashes

/* SELECT queries do not change your data! They're safe to experiment with */

SELECT *
FROM flood;
--select * everything from table flood

SELECT id, flood_leve
FROM flood;
--select only the id and flood_leve fields from flood

SELECT id, flood_leve
FROM flood
ORDER BY flood_leve ASC;
--sort results by flood_leve ascending order

SELECT id, flood_leve
FROM flood
ORDER BY id DESC;
--sort results by id descending order

SELECT id AS id_num, flood_leve AS metersdeep
FROM flood;
-- rename columns with AS keyword

SELECT id AS id_num, flood_leve AS metersdeep, flood_leve / 3.28 AS feetdeep
FROM flood;
-- also calculate a new field, using AS to give it a good field name
-- always rename calculated columns with AS !

SELECT *, flood_leve / 3.28 AS feetdeep
FROM flood;
-- select all columns plus one new one for depth in feet

/* Each Geometry record in PostGIS contains information about its SRID and geometry
Use special fucntions to expose that information in human-readable form */
SELECT st_srid(geom), st_astext(geom), geometrytype(geom), st_dimension(geom), st_numgeometries(geom), st_isvalid(geom)
FROM flood;
--how many geometry parts do each of these features contain?
--and are their geometries valid? If not, many GIS algorithms will not work!

-- fortunately there is an st_makevalid() function to fix most problems.
-- Apply this with an UPDATE query, which DOES change your data, much like
-- Field Calculator in QGIS
UPDATE flood
SET geom = st_makevalid(geom);
--due to the complexity of those polygons, this will take some time, even for PostGIS

/* Re-run the SELECT query to view geometry information from above to see if
the makevalid function managed to fix our geometry errors */


/* use a WHERE clause to limit the results to the rows with TRUE results from the WHERE expression */
SELECT *
FROM flood
WHERE flood_leve < 200;

/* combine multiple conditions in the WHERE clause with the AND operator */
SELECT *
FROM flood
WHERE flood_leve < 200 AND flood_leve > 25;

SELECT *, st_area(geom) AS area_m2
FROM flood;
/* st_area() calculates the area in units of the CRS (meters).
Try calculating in square kilometers and write the query you used below: */

/* AGGREGATE functions can only be used if collapsing the whole table to one row,
or if GROUPING the table into rows defined by a GROUP BY clause. */
SELECT min(flood_leve) as mindepth, max(flood_leve) as maxdepth,
	avg(flood_leve) as avgdepth, sum(flood_leve) as sumdepth,
	count(flood_leve) as cntdepth
FROM flood;

SELECT count(total_both) as cntwards, sum(total_both) as totalpop,
	sum(total_male) as male, sum(total_fema) as female,
	sum(total_fema) / sum(total_male) as genratio
FROM census;
-- what do you think sum(total_fema) / sum(total_male) is? why is it 1?

SELECT count(total_both) as cntwards, sum(total_both) as totalpop,
	sum(total_male) as male, sum(total_fema) as female,
	sum(total_fema)::real / sum(total_male) as genratio
FROM census;
/* adding ::real to the sum(total_fema) is type-cast: it tells PostGIS to treat
that data as a real number instead of an integer, changing the type of division
from integer division to decimal division */

SELECT reg_name, count(total_both) as cntwards, sum(total_both) as totalpop,
	sum(total_male) as male, sum(total_fema) as female,
	sum(total_fema)::real / sum(total_male) as genratio
FROM census
GROUP BY reg_name;
-- group the results by region!

SELECT reg_name, reg_code, count(total_both) as cntwards,
	sum(total_both) as totalpop, sum(total_male) as male,
	sum(total_fema) as female, sum(total_fema)::real / sum(total_male) as genratio
FROM census
GROUP BY reg_name, reg_code;
/* only group fields and aggregate functions are allowed for SELECT queries with
aggregation, so to include reg_id include it as a group field.
The reg_id always matches the reg_name anyway. */

SELECT reg_name, reg_code, dis_name, dis_code, count(total_both) as cntwards,
	sum(total_both) as totalpop, sum(total_male) as male,
	sum(total_fema) as female, sum(total_fema)::real / sum(total_male) as genratio
FROM census
GROUP BY reg_name, reg_code, dis_name, dis_code;
/* adding district information to the grouping will force creation of more groups:
one for each unique Region & District combination */

/* we can use grouping to check for duplicates, e.g. are there any duplicate ward codes? */
SELECT ward_code, count(ward_code) as cntward
from census
group by ward_code
order by cntward desc;

/* try to check for duplicate ward names. Copy your query below */


/* we're really concerned with duplicates in the Dar es Salaam region,
so let's try limiting the query to that region */
SELECT ward_name, count(ward_name) as cntward
from census
where reg_name = 'Dar-es-salaam'
group by ward_name
order by cntward desc;
-- notice that we are using text strings in expressions with single quotes,
but numbers were used in formulas without any quotes at all

/*how many wards are there per district in Dar es Salaam region? Try writing a query to check!*/




/*this is important because it informs us about CARDINALITY: how many records
match on either side of a join when we match census data to mapped wards?*/



/* let's create a new table based on a SELECT query, containing only census data for Dar es Salaam */
CREATE TABLE darcensus AS
SELECT *
FROM census
WHERE reg_name = 'Dar-es-salaam';
/* REFRESH your schema tree and view the darcensus table. It should have 90 records */


/* NOW ITS TIME TO JOIN */
SELECT wards.*, total_both as totalpop, total_male as male, total_fema as female
FROM wards LEFT JOIN census
ON wards.ward_name = census.ward_name AND wards.district_n = census.dis_name;

/* we should have already known we might be in trouble with the join, because we had 95 wards on the map and 90 wards in the table for Dar es Salaam. Note some of the NULL results, where no information joined.
We can isolate these NULL cases if we pass the join query to a second query and select for NULL */

SELECT *
FROM
	(SELECT wards.*, total_both as totalpop, total_male as male, total_fema as female
	FROM wards LEFT JOIN census
	ON wards.ward_name = census.ward_name AND wards.district_n = census.dis_name) AS a
WHERE totalpop IS NULL;
-- we placed our first query in parentheses and gave it a table name alias of 'a' with AS a, and used the results of that query in place of an ordinary table. If you create compound queries like this, it's required to use a unique alias for each subquery

/* It's always best practitce to check the counts, check for duplicates, and check for NULL values when you join data, becuase any number of suprising errors can happen. In this case, it seems like the census geographies may have changed, because the data table we are using matches the 2012 Tanzanian Census report. */

/* We have two options for making this permanent*/

/* option 1: new table */
CREATE TABLE ward_census AS
SELECT wards.*, total_both as totalpop, total_male as male, total_fema as female
FROM wards LEFT JOIN census
ON wards.ward_name = census.ward_name AND wards.district_n = census.dis_name;

/* option 2: add fields and update them */
ALTER TABLE wards
ADD COLUMN totalpop int,
ADD COLUMN male int,
ADD COLUMN female int;
/* alter table lets to change table structure, including adding, dropping,
or renaming columns. int is the integer data type for the columns */

/* update fields based on a join */
UPDATE wards
SET totalpop = census.total_both,  male = census.total_male, female = census.total_fema
FROM census
WHERE wards.ward_name = census.ward_name AND wards.district_n = census.dis_name;


/* It's time to examine geometry metadata and transform wards from WGS 1984 to the proper UTM zone used by flood */
/* we've already seen how to inspect geometry data stored in each row. what about the database level? There's a secret table: geometry_columns */

SELECT *
FROM geometry_columns;
-- you should see an entry for each spatial table in your schema with info about which column has geometry data, dimensions, the SRID, and the geometry type

/* IT IS NEVER ALLOWED to create geometry data inconsistent with the information in this table. Therefore, in order to transform from one coordinate system to another, it's necessary to create a new geometry column, update the new column with the transformed geometry, and then drop the old column.
I will demonstrate with ward_census*/

SELECT addgeometrycolumn('dumb','ward_census','utmgeom',32737,'MULTIPOLYGON',2);
--the parameters are: schema, table, column, SRID, geometry type, dimensions

UPDATE ward_census
SET utmgeom = ST_Transform(geom, 32737);
--now the irony, if you refresh your schema, is that you have duplicate versions of ward_census, one for each geometry column within.

/* you can remove any column, including a geometry column, with: */
ALTER TABLE ward_census
DROP COLUMN geom;

/* try adding a column of type REAL to ward_census with name area_km2
Then calculate the area in square kilometers! */

/* on the INFO tab for your spatial Layers, you might see a caution symbol with
"no spatial index defined". If that is the case, use the link to "create it" for
each spaital table */

/*Lets try a spatial query, selecting all of the wards that have some flood risk */
SELECT ward_census.*
FROM ward_census LEFT JOIN flood
ON st_intersects(ward_census.utmgeom, flood.geom);
/* The LEFT JOIN has included all of the wards, even if they didn't intersect,
because a LEFT JOIN includes all of the records on the left side of the join,
regardless whether they matched anything on the right side or not. */


SELECT ward_census.*
FROM ward_census INNER JOIN flood
ON st_intersects(ward_census.utmgeom, flood.geom);
/* changing to INNER JOIN we only get the records that successfully join.
See more on join types here: https://www.postgresqltutorial.com/postgresql-joins/
Still, we have a lot of duplicates:
 one for every time a ward intersects more than one type of flood. */

SELECT DISTINCT ward_census.*
FROM ward_census INNER JOIN flood
ON st_intersects(ward_census.utmgeom, flood.geom);
-- we can remove all dupliates with the DISTINCT keyword

/* It seems like the flood data is overly complex if we don't mind how deep the
water level is. Let's dissolve the flood layer into a single feature.
The AGGREGATE function for dissolving geometries is st_union() */


SELECT st_union(geom)
FROM flood;
--that wasn't exciting, but we should save it as a new table:

CREATE TABLE flooddissolve
AS
SELECT st_union(geom)::geometry(multipolygon,32737) as geom
FROM flood;
/* PostGIS doesn't automatically detect or make assumptions about the type of
geometry and coordinate reference system in newly created geographic data.
Therefore, we type-cast it with ::geometry(multipolygon,32737) where the
parameters are the geometry type and SRID. You can use this type-casting
strategy for geometry data any time the geometry information isn't registering
correctly for a new table or column. */

/* IT'S TIME FOR OVERLAY ANALYSIS!
LETS DO AN INTERSECTION, which is really a JOIN based on LOCATION while also
modifying the GEOMETRY DATA. This may take time because of the complexity of a
dissolved flood layer. We structure the query like a select by location with
the join on st_intersects(), but we also calculate a new geometry which is the
st_intersection() of the ward geometry with the flood zone geometry */

SELECT ward_census.*,
	st_multi(st_intersection(ward_census.utmgeom, flooddissolve.geom))::geometry(multipolygon,32737) as geom
FROM ward_census INNER JOIN flooddissolve
ON st_intersects(ward_census.utmgeom, flooddissolve.geom);

/* The ST_MULTI() function was added to cast each geometry as multi-geometry type.
Since we don't know if we'll get single- or multi-part features out of an
intersection and all of the geometries have to be of the same type,
it's safest to wrap an st_multi() function around most geometry-altering queries.

You can add the results of this query to the QGIS map using the Load as new layer
option at the bottom of the results, and set the Geometry column to geom.
It looks good, so let's make it a new table named ward_flood.
Try this on your own, and then drop the old utmgeom column from that new table.
*/

/* can you calculate an area for the flooded parts of each ward ? */

/* can you join that area back to the original wards ? */

/* can you calculate the percentage of area flooded and the population density now ? */

/* HINT: you can add a WHERE clause to an UPDATE query in order to only update a
few rows, e.g. if you wanted to enter a percentage of 0 for subwards with no
flooding, it might look like this: */
UPDATE ward_census
SET pctflood = 0
WHERE floodarea IS NULL;
-- or you can also use a CASE statement

/* solution to the two questions in one query, starting with original three
layers: flood, wards, census  */
CREATE TABLE wardflood AS
SELECT b.*, totalpop/warea AS popdens,
	CASE WHEN farea>0 THEN farea/warea ELSE 0 END AS pctflood
FROM
	(SELECT a.*, ST_Area(a.geom)/1000000 AS warea,
		ST_Area(ST_Intersection(a.geom,f.ugeom))/1000000 AS farea FROM
			(SELECT wards.id AS id,
				ST_Transform(wards.geom,32737)::geometry(multipolygon,32737) AS geom,
				wards.ward_name AS wname, wards.district_n AS dname,
				total_both AS totalpop, total_male AS male, total_fema AS female
			FROM wards LEFT JOIN census
			ON wards.ward_name = census.ward_name AND
				wards.district_n = census.dis_name
			) AS a
	LEFT OUTER JOIN
		(SELECT ST_Union(ST_Makevalid(geom)) AS ugeom FROM flood) AS f
	ON ST_Intersects(a.geom, f.ugeom)) AS b;


/* The same solution, using WITH to more intuitively show how the a and f
subqueries are calculated first and then used in the main query below */
WITH a AS (
		SELECT wards.id AS id,
			ST_Transform(wards.geom,32737)::geometry(multipolygon,32737) AS geom,
			wards.ward_name AS wname, wards.district_n AS dname,
			total_both AS totalpop, total_male AS male, total_fema AS female
		FROM wards LEFT JOIN census
		ON wards.ward_name = census.ward_name AND wards.district_n = census.dis_name
	), f AS (
		SELECT ST_Union(ST_Makevalid(geom)) AS ugeom FROM flood
	), b AS (
		SELECT a.*, ST_Area(a.geom)/1000000 AS warea,
			ST_Area(ST_Intersection(a.geom,f.ugeom))/1000000 AS farea
		FROM a LEFT OUTER JOIN f
		ON ST_Intersects(a.geom, f.ugeom)
	)
SELECT *, totalpop/warea AS popdens,
	CASE WHEN farea>0 THEN farea/warea ELSE 0 END AS pctflood
FROM b;
