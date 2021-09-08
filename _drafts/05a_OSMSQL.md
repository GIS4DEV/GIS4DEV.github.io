---
layout: lesson
title:  OpenStreetMap and PostGIS
purpose: "learn OpenStreetMap and PostGIS through structured experimentation"
---

Wednesday, March 24

Rosgen Replication is due; no other work assigned prior to class.

Lab time must remain 7:30 - 10:30.

## Software
  
- The powerful open-source relational database is [PostgreSQL](https://www.postgresql.org/) (this is installed on Middlebury's server for you)
- You can connect to Middlebury's database from your laptop using QGIS [DB Manager Plugin](https://docs.qgis.org/3.16/en/docs/user_manual/plugins/core_plugins/plugins_db_manager.html), which automatically installs with QGIS.
- Optionally you may install the [PGAdmin](https://www.pgadmin.org/) client as well, though we should be able to do everything with DB Manager.
- The spatial extension for PostgreSQL is [PostGIS](https://postgis.net/)
- A small command-line program translates OpenStreetMap data into a PostGIS database: [OSM2PGSQL](https://osm2pgsql.org/) (optional to install on your laptop-- the plan is to use OSM2PGSQL to populate a database for you)
- It is possible to install and connect to a PostGIS server on your own computer for personal local use. This takes a bit of work and is not required for the course. See [https://postgis.net/install/](https://postgis.net/install/)

## Resources

- Reference and tutorial for non-spatial PostgreSQL: [PostgreSQL Tutorial](http://www.postgresqltutorial.com/)
- PostGIS [reference](https://postgis.net/docs/reference.html), [cheat sheet](https://www.postgis.us/downloads/postgis20_cheatsheet.html), and [Introduction Tutorial](https://postgis.net/workshops/postgis-intro/)
- CrunchyData Interactive PostgreSQL and PostGIS [Learning Portal](https://learn.crunchydata.com/postgis)
- Paul Ramsey created PostGIS, and he has a **lot** of [opinions about it](http://blog.cleverelephant.ca/). I'm ok with that, because it looks like he's currently [revamping GEOS](http://blog.cleverelephant.ca/2020/12/waiting-postgis-31-3.html) which runs basically all vector overlay analysis in most any open source GIS software you can find. The implications are huge, becuase the revision he is describing would fix most of the geometry error problems that arise using overlay tools.
- [Why you should care about PostGIS](https://medium.com/@tjukanov/why-should-you-care-about-postgis-a-gentle-introduction-to-spatial-databases-9eccd26bc42b)

## Example of Relational Database Application

- Example of a large public relational database, property in Harris County, Texas [parcel viewer](https://arcweb.hcad.org/parcelviewer/)
- Behind the scenes, each property's attributes are drawn from [multiple tables](http://pdata.hcad.org/download/index.html), where each .txt file is a single table

### Characteristics & Benefits of Relational Databases

- Each table must have a primary key to uniquely identify every row. This may be a single field/column or a combination of them.
- Foreign keys help connect tables through joins.
- For example, an owners table will contain a property ID number as a foreign key so that the owner information can be connected to the parcel of land through a join.
- The relationship between two tables is referred to as cardinality, and may be:
  - One to One: one record in table A correlates to exactly one record in table B
  - One to Many: one record in table A correlates to one or more records in table B
  - 1 .. 0 to N: another way of expressing that one record in table A correlates to zero, one, or many records in table B.
- The advantage of dividing data out into multiple tables with defined relations between them is in saving data storage space. Without this division, you would need one extremely wide table with many null values, e.g. it would require enough columns for information on every building in the parcel with the most buildings, but all of those columns would be null for a vacant lot!
- The advantage of using a database server like PostgreSQL is that the server can be installed in the "cloud" or in a high-powered computing center. Your data and all of the analysis for your queries exists at the server, so you can do GIS with a much simpler and cheaper laptop or PC.
- You need a client to connect to the server. For this, we can use DB Manager in QGIS or we can use an application called pgAdmin: https://www.pgadmin.org/
- With the right libraries, you can even connect to PostgreSQL databases with R / RStudio as the client!
- Finally, relational databases support indexing both attributes and geometries, vastly improving the efficiency of analyzing big data.

So how can you connect, e.g. information about the number of apartments on a parcel of land, when each building may have multiple apartments and each parcel may have multiple buildings?

- Buildings must be uniquely identified with a primary key using both the parcel number and a unique building number.
- Select only the apartment information from building fixtures.
- Group fixture data by parcel ID while summing the number of apartments.
- Now that there is only one record for each parcel with the sum of apartments, join the apartment information to parcels.

## Challenge for Wednesday Evening

### Question

For each ward of Dar es Salaam, what is the:
- Population Density
- Percentage of area at risk of flooding (any amount of flooding)

While answering the question, we'll learn how to check and manage:
- Missing Data in Joins
- Geometry Errors
- Managing geometry metadata in databases
- Map projections and area calculations

### Givens

- `tza_pop_popn_nbs_baselinedata.xlsx` : Excel table of population by ward for all of Tanzania
  - Reg_Code
  - Reg_Name
  - Dis_Code
  - Dis_Name
  - Ward_Code
  - Ward_Name
  - total_both
  - total_male
  - total_fema

- `Dar es Salaam Administrative Wards` : Vector polygon layer of wards in Dar es Salaam
  - Ward_Name
  - Ward_Code
  - District_N
  - District_C
  - Region_Nam
  - Region_Cod
  
- `Dar es Salaam Flood Scenario, 25-200cm` : Vector polygon layer of flood risk zones in Dar es Salaam

### Instructions
- [SQL Code with Instructions in Comments](/assets/dsm_sql.sql) : open this in Notepad++ or Atom
- [Panopto Videos](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=beda027d-3b8e-4700-9ae7-acf4012bdc0e) : Available to Middlebury community only. The last video is optional background on how to download OpenStreetMap data and push it into a PostGIS database.