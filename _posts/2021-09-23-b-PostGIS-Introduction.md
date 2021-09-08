---
layout: lesson
title:  PostGIS Introduction
purpose: "Spatial analysis with PostGIS SQL"
format: lab
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
- See how OSM data is imported into PostGIS and get some tips for querying OSM data on the webmap, copying tables out of your database, and building spatial queries with the continuation of our [PostGIS Video Playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=beda027d-3b8e-4700-9ae7-acf4012bdc0e) (Middlebury College only)
- Learn some [more SQL](/assets/osm_sql.sql) to investigate the social context of OpenStreetMap data and to identify college bars.
- [more.sql](/assets/more.sql)
