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
Let's practice some SQL queries to ask questions about provenance and social context in the OpenStreetMap data for Dar es Salaam, supplementing what we can already learn from Resilience Academy and Ramani Huria.
*/

/*
Connect to the dsm database on artemis
You'll find that OSM2PGSQL has created four spatial data tables in the public schema:
- planet_osm_line
- planet_osm_point
- planet_osm_polygon
- planet_osm_roads

I don't suggest trying to view the tables: they each have over 100,000 features!
Instead, try this query to preview the first 50 records of data:
*/
SELECT *
FROM planet_osm_line
LIMIT 50;
/*
You can immediately see that the structure of OSM data in PostGIS is not taking advantage of relational database table structure and is wasting a ton of database space with NULL values. For this reason, do not copy whole tables of data from the public schema to your own schema! Select only the columns and records that you need for analysis.



