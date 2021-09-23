---
layout: lesson
title:  PostGIS Introduction Practice
purpose: "practice spatial analysis with PostGIS"
format: workshop
date: 2021-09-23 13:30
---

## Question

For each ward of Dar es Salaam, what is the:
- Population Density
- Percentage of area at risk of flooding (any amount of flooding)

While answering the question, we'll learn how to check and manage:
- Missing Data in Joins
- Geometry Errors
- Managing geometry metadata in databases
- Map projections and area calculations

## Givens

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

## Instructions

**Note**: these instructions need to be consolidated into one workshop/tutorial

- [SQL Code with Instructions in Comments](/assets/dsm_sql.sql) : open this in Notepad++ or Atom
- [Panopto Videos](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=beda027d-3b8e-4700-9ae7-acf4012bdc0e) : Available to Middlebury community only. The last video is optional background on how to download OpenStreetMap data and push it into a PostGIS database.
  - Open QGIS -> Browser Panel -> PostGIS -> New Connection
  - Name: up to you; Host: `artemis`; port: `5432`; database: `dsm`; User name and password
  - Browse database contents in Browser Panel and DB Manager Plugin
  - Query tab: `ALTER USER name PASSWORD 'new_password'`
  - Reconnect after changing the password
  - Refresh Database
  - Resilience Academy at [geonode.resilienceacademy.ac.tz/](https://geonode.resilienceacademy.ac.tz/)
  - View metadata detail for any vector layer and copy the `OGC WFS geonode service` address
  - In QGIS, add a WFS connection using the address you just copied
  - Add `Administrative Wards` and `Flood Scenario 25-200cm` to the QGIS project
  - FYI, [GeoNode](https://geonode.org/) is an open source geospatial catalog server
  - In DB Manager, navigate to your personal schema and Import Layer / File
  - Import the flood layer with the table name `flood` and use the options to *convert field names to lowercase* and *create spatial index*
  - View table metadata and create spatial indices
  - Repeat the import procedure for the administrative layer, calling the new table `wards`
- for Sept 30th: Learn some [more SQL for OSM](/assets/osm_sql.sql) to investigate the social context of OpenStreetMap data and to identify college bars.
- Miscellaneous notes: [more.sql](/assets/more.sql)

## For next class

- Complete the `dsm_sql` and `osm_sql` queries
- Write hard copy or digital notes and questions about how SQL works in relation to what you know from QGIS.
- Complete a new blog post, which may respond to [discussion questions for next class](2021-09-28-r-and-r)
