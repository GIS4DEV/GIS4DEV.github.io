---
layout: lesson
title: OSM and PostGIS for Urban Resilience
purpose: "implement research of urban resilience using OpenStreetMap and PostGIS"
format: lab
date: 2021-09-30 13:30
---

## Expectations for Spatial Urban Resilience Analysis of Dar es Salaam

The question prompt for this analysis is posted on the previous page. Expectations for the analysis are:

- While each person should solve their own problem, you are *strongly encouraged* to share code, advice, and support.
- Publish final result in the form of an interactive Leaflet map.
- Complement the Leaflet map with a static map designed for a static web view or and/for printing.
- Layers with large numbers of features will have difficulty displaying in a Leaflet map, so you might want to focus on displaying results aggregated by Ward or Subward, and for illustrative purposes select underlying features for particularly interesting wards for display.
- The lab report should include the following sections (more on this next week):
  - Question
  - Data & data citations & descriptions
  - Methods (verbal description of analysis with SQL code blocks, with sufficient explanation and detail to be reproduced)
  - Results (interpretation, with link to Leaflet map and any static maps)

## Wisdom for Spatial SQL and OSM

- Several manuals and tutorial resources were referenced on the [first day of SQL](/2021/09/23/PostGIS-OGC)
- Use lowercase table names and column names and avoid using SQL keywords or function names for table names and column names
- Refresh the schema every time you: `ALTER TABLE`, `DROP TABLE`, `CREATE TABLE`, or `addgeometrycolumn()`
- Remember to alias the results of any function or calculation to a good field name with `AS` or the shorthand `.`
- Analyze attributes if possible, not geometries. Geographic and spatial operations are computationally expensive, so avoid them if possible.
- Keep geometries smaller / simpler wherever possible: points are better than polygons, single-part features better than multi-part features.
- Create spatial indices for large geographic datasets before applying any spatial function.
- Test solutions with simple queries first, and use a `LIMIT` clause or `WHERE` clause to check if things are working with just a few features before scaling up
- Break the problem up into smaller goals/steps. Feel free to create a `VIEW` or a `TABLE` of results from these intermediary steps to help check your work and avoid complex compound SQL queries.
- Check counts and totals of the data you're analyzing throughout the process to make sure you're not creating & propagating errors
- Write workflows as you know them from introductory GIS to help plan and keep track of what you're doing
- Draft and save queries in a `.sql` file using Atom. End each query with a semicolon `;` so that the full workflow is reproducible.
- Don't try viewing or previewing extremely large or complex tables. View the INFO tab and query with a `LIMIT` of just a few records
- Remember to type-cast any geometries created from spatial functions `::geometry(geometry_type,EPSG_code)`
- Almost everything involving two tables/layers is best accomplished with a `join`, including attribute joins, spatial joins, select by location, overlay analysis and distance analysis.
- OpenStreetMap can be surprising because the data is volunteered: different volunteers might use different tags, tag values, and geometries (points or polygons). Super-users *tend* to edit these things for consistency.
- The volunteer effort for digitizing and maintaining data on OpenStreetMap is not constant over space or time. Run some queries to test the spatial-temporal completeness of the data you are interested in, and consider limiting the extent of your analysis to a region in which the data seems reliable.

## Nearest Neighbor Searching and UNION overlay in postgis

- [nearest.sql](/assets/nearest.sql)
