/*
Structure Query Language Instructions for Dar es Salaam Flood Risk Analysis
Prepared by Joseph Holler, 2021
Resources:
	Panopto: https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=beda027d-3b8e-4700-9ae7-acf4012bdc0e
	ResilienceAcademy: https://geonode.resilienceacademy.ac.tz/
	Ramani Huria: https://ramanihuria.org
	Humanitarian Data Exchange Population by Ward: https://data.humdata.org/dataset/population-by-ward-adm3
*/

/*
Nadine Schuurman argued for doing ethnographies on databases in order to understand data's provenance and social context, and to avoid making mistakes because of semantic heterogeneity.
OpenStreetMap's model of volunteered geographic information provides a unique opportunity to gain insight into who has been editing data, when, and how frequently. You can even query historical versions of features on the map.

In this tutorial,
1) Let's practice some SQL queries to ask questions about provenance and social context in the OpenStreetMap data for Dar es Salaam, supplementing what we can already learn from Resilience Academy and Ramani Huria.
and then
2) Let's practice some more spatial SQL querying to find all of the pubs near universities in Dar es Salaam.
*/

/*
Connect to the dsm database on artemis
You'll find that OSM2PGSQL has created four spatial data tables in the public schema:
- planet_osm_line
- planet_osm_point
- planet_osm_polygon
- planet_osm_roads

I don't suggest trying to view the tables or preview because of the very large number of features in each.
Instead, look at the Info tab to view all the field name and geometry metadata.
Which field contains the geometry data?
To preview the data, try this query to see the first 50 records of data:
*/
SELECT *
FROM planet_osm_line
LIMIT 50;
/*
You can immediately see that the structure of OSM data in PostGIS is not taking advantage of relational database table structure and is wasting a ton of database space with NULL values. For this reason, do not copy whole tables of data from the public schema to your own schema! Select only the columns and records that you need for analysis.

The columns that you see here each represent a Tag in OSM, and the OSM2PGSQL tool has selected common tags used in OSM-based cartography. The tool can also be customized to include other less common tags. OSM users can add any tags they like to map features: this set has just developed out of consensus among the community of OSM users.
*/

/*
QUESTION: When was this data last edited?
Working with dates and times is always difficult in computing, so let's just extract the year and summarize edits by year, type-casting to integer to remove the .0 decimal place*/
SELECT *, extract(year from osm_timestamp)::int as edit_year
FROM planet_osm_line
LIMIT 50;

/*Let's count the number of features edited by the last year in which they were edited*/
SELECT COUNT(osm_id) AS n, extract(year from osm_timestamp)::int AS editYear
FROM planet_osm_line
GROUP BY editYear
ORDER BY editYear;

/*Try similarly querying the point, polygon, and roads layers. When were the majority of features last edited for each layer?*/

/*Sometimes the quality of OSM data is judged in terms of how frequently the data has been edited, showin in the osm_version field. Edits could be either to attributes or geometries. Summarize the average and maximum number of edits per feature in each of the four tables, e.g. with... */
SELECT avg(osm_version) AS avgEdits, max(osm_version) AS maxEdits
FROM planet_osm_line;

/*Try similarly querying the point, polygon, and roads layers. Which geometry type has seen the most edited versions per feature on average?*/

/*Another major question about OSM data is whether it has become dominated by corporations and governments, or whether it still represents volunteered geographic knowledge. Furthermore, is the volunteered knowledge foreign, or local? Our best guess at this type of information is from the osm_user identity. Let's try to find the top users editing Dar es Salaam data by counting the number of edits each user has made. */
SELECT osm_user, count(osm_id) as n
FROM planet_osm_line
GROUP BY osm_user
ORDER BY n DESC;

/*We have been analyzing the four tables seperately, but with the UNION operator, they can be combined, as long as all of the columns are indentical. For example:*/
SELECT osm_user, osm_id FROM planet_osm_line
UNION
SELECT osm_user, osm_id FROM planet_osm_roads
UNION
SELECT osm_user, osm_id FROM planet_osm_polygon
UNION
SELECT osm_user, osm_id FROM planet_osm_point;
/* This may take 1 to 2 minutes to run. There are >1.6 million records!
FYI, SQL also supports INTERSECT and EXCEPT set operators. See:
https://www.postgresqltutorial.com/postgresql-union/
https://www.postgresqltutorial.com/postgresql-intersect/
https://www.postgresqltutorial.com/postgresql-except/
*/

/*count the aggregated results!*/
SELECT a.osm_user AS osm_user, count(a.osm_id) AS n
FROM
	(SELECT osm_user, osm_id FROM planet_osm_line
	UNION
	SELECT osm_user, osm_id FROM planet_osm_roads
	UNION
	SELECT osm_user, osm_id FROM planet_osm_polygon
	UNION
	SELECT osm_user, osm_id FROM planet_osm_point) AS a
GROUP BY osm_user
ORDER BY n DESC;

/* Who is making the most edits to Dar es Salaam OSM data, and do you think that
local knowledge figures prominently in this data? */

/* Let's try to find all of the universities in Dar es Salaam, and count how
many pubs are found within 800 meters. Start by searching for unique values in
the amenity field of the polygons and points tables. */

-- enter queries here. It's similar to counting how many features each OSM user edited.

/* Then, create new tables named unipoly and unipoint in your own schema
containing the osm_id, way, and name for each point university feature and each
polygon university features, using the proper UTM Zone.
By default, new tables are created in your own schema, and queries look for
tables in your own schema first and in the public schema second. If you need to
specify which schema to query or create a table in, add the schema name and a
period before the table name. E.g. use dumb.unipoint to find the unipoint table
in dumb schema or use public.planet_osm_line to find the planet_osm_line table
in the public schema. */

CREATE TABLE unipoint AS
SELECT osm_id, st_transform(way,32737)::geometry(point,32737) as geom, name
FROM planet_osm_point
WHERE amenity ILIKE 'university';

/* Repeat for the polygons.
The ILIKE text string comparison operator is simlar to =,
but allows for differences in capitalization */

/* Now lets create buffers */
CREATE TABLE unibuffer AS
SELECT osm_id, st_buffer(geom, 800)::geometry(polygon,32737) as geom from unipoint
UNION
SELECT osm_id, st_buffer(geom, 800)::geometry(polygon,32737) as geom from unipoly;

/* Now lets group/dissolve them all together */
CREATE TABLE unibufferdissolve AS
SELECT st_union(geom)::geometry(multipolygon,32737) AS geom
FROM unibuffer;

/* And convert from a multi-part feature to single part features */
CREATE TABLE unibuffers AS
SELECT (st_dump(geom)).geom::geometry(polygon,32737)
FROM unibufferdissolve;
/* ST_Dump seperates all the parts of a geometry into separate features.
It's documented here: https://postgis.net/docs/ST_Dump.html
I'm using this following the documentation, which shows
an extra set of parenthesis around st_dump followed by ".geom" which is like using
AS to rename the output. I presume this is because st_dump() returns a set of
rows, rather than just one. */

/* Now we have single-part buffers! We can select by location for any of the
pubs intersecting our buffers, remembering to keep the coordinate refrence
systems consistent in the comparison. Transform the smaller set of features
(buffers) to match the larger set (planet_osm_polygon).
Remember that 'DISTINCT' avoids duplicates in case a pub was close to two or
more university features */

SELECT DISTINCT osm_id, name
FROM planet_osm_polygon INNER JOIN unibuffers
ON st_intersects(planet_osm_polygon.way, st_transform(unibuffers.geom,4326))
WHERE planet_osm_polygon.amenity = 'pub';

/* SQL is smart: it will solve the amenity = pub part of this first.
What if we crafted this to require comparing all the spatial information first?
The following query took 46 seconds instead of the 2.7 seconds for the query above */

SELECT DISTINCT osm_id, name
FROM planet_osm_polygon INNER JOIN unibuffers
ON st_intersects(planet_osm_polygon.way, st_transform(unibuffers.geom,4326));

/* meanwhile, the following query was taking so long that I just cancelled it...
Why do you think the query below is so much more inefficient than the query above? */

SELECT DISTINCT osm_id, name
FROM planet_osm_polygon INNER JOIN unibufferdissolve
ON st_intersects(planet_osm_polygon.way, st_transform(unibufferdissolve.geom,4326));

/* Check to see if any pubs within 800 meters of a university are also hiding as point features! */

/* Try combining all of the pubs into one POINT based table, where st_centroid() can convert a polygon into a point */

/* Extra challenge: Create one layer in which you combine all of the pubs with the same name into a single feature, but don't combine the pubs without names, keeping NULL name pubs as individual features. */

/* Extra extra challenge: Can you create a table with points for all of the university pubs with ONE query? See the compound query added to dsm_sql.sql for ideas on how to tackle this. */


-- PostGIS Reference https://postgis.net/docs/reference.html
-- cheat sheet: http://www.postgis.us/downloads/postgis21_cheatsheet.pdf
-- PostgreSQL cheat sheet: https://www.postgresqltutorial.com/postgresql-cheat-sheet/
-- nearest neighbor searching: https://postgis.net/workshops/postgis-intro/knn.html
