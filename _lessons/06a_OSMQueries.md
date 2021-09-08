---
layout: lesson
title:  Querying OpenStreetMap
purpose: "investigate OpenStreetMap data with SQL queries"
---

Monday, March 29

Take a look at the [OSM2PGSQL](https://osm2pgsql.org/) program to understand how it translates OpenStreetMap data into PostGIS. 
  
## Exploration of OSM data with SQL

- See how OSM data is imported into PostGIS and get some tips for querying OSM data on the webmap, copying tables out of your database, and building spatial queries with the continuation of our [PostGIS Video Playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=beda027d-3b8e-4700-9ae7-acf4012bdc0e) (Middlebury College only)
- Learn some [more SQL](/assets/osm_sql.sql) to investigate the social context of OpenStreetMap data and to identify college bars.

## Develop a Spatial Urban Resilience Question and Investigate Data Sources

Please develop spatial questions about resilience and vulnerability in Dar es Salaam into spatial analysis with data from Ramani Huria, available through OpenStreetMap and Resilience Academy. Implement a solution to your question(s) in PostGIS and thoroughly document your analysis, at first using Notepad ++ for drafting and commenting queries. The final product will be a practical lesson plan / tutorial for students learning how to apply geospatial analysis to urban hazards management.

- At least one input for your question should come from OpenStreetMap data.
- Other input(s) may come from ResilienceAcademy.
- The question should require a level of GIS analysis analagous to a GEOG 0120 lab or exam. Be aware that seemingly simple questions may actually require quite a few spatial analysis steps to prepare the data.
- At least one final step to your question should be to quantify a dimension of resilience or vulnerability in each ward or subward of Dar es Salaam, so that your findings could be translated back into policy action consistent with existing administrative hierarchies and geographic regions.
- Information on the available data sources is included at the end of this page.

Considering data error and accuracy, can you get some insight into the data you’re using by querying osm_user, osm_uid, osm_version and/or osm_timestamp? These metadata, associated with every feature, are explained [here](https://wiki.openstreetmap.org/wiki/Elements)

You may work individually or in pairs on the analysis in this lab assignment, but please post the final product to both GitHub accounts so that you each have your own copy.Please try your queries on small samples of data first, by using the LIMIT clause or using a WHERE clause to apply a condition to select a small sample of features. Remember to add indices to accelerate time-consuming queries. 

### Possible Questions

Your research question may include any of these proposed topics, or something new:

- Accessibility of residential buildings to roads passable by service/emergency vehicles 
- Density of storm drains, especially comparing inside & outside of floodplains
- Presence of community assetsoYou can do network analysis with PostGIS with the pg_routing extension to also get accessibility to community assets, but I suggest this is a topic for an independent project later 
- Presence of open space or green space / parks, and maybe trees? 
- Land cover in floodplains, using the presence / area of buildings as a proxy 
- Conditions of drains and culverts in each locality, and potentially co-location of drain conditions and flood conditions 
- Proximity of residential & commercial buildings to floodplains and to drains
- Contrast the flood risk layer from ResilienceAcademy with presence of water bodies, rivers, wetlands, and tidal areas in OpenStreetMap

## For Wednesday
- Complete the video set and new SQL queries
- Brainstorm a spatial question related to urban resilience and sustainability in the context of rapid urbanization, flood risk, sea level rise, urban heat, terrorism, or other hazards.
- Investigate spatial data layers from ResilienceAcademy and from OpenStreetMap that you can use to answer the question.

## OpenStreetMap and Ramani Huria / Resilience Academy

Know your data sources.

- [OpenStreetMap](https://www.openstreetmap.org/#map=12/-6.8162/39.2203)
- [Ramani Huria](http://ramanihuria.org/)
- Ramani Huria open street map [wiki guide](https://wiki.openstreetmap.org/wiki/Dar_es_Salaam/Ramani_Huria)
- There are several stories about Ramani Huria [here](https://opendri.org/tag/tanzania/)
- [Resilience Academy](https://resilienceacademy.ac.tz/), a Ramani Huria project with WMS raster and WFS feature services at https://geonode.resilienceacademy.ac.tz/geoserver/ows

**Question:** What do you want to know about this data before you start using it for analysis? Start taking notes for / writing up a review of data sources for an analytical report on flood risk in Dar es Salaam... What data is available, and how was that data created? How are the features we want to use for analysis tagged in OpenStreetMap, and how were they created?