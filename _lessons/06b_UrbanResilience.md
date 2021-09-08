---
layout: lesson
title: Urban Resilience Analysis
purpose: "execute and publish a spatial urban resilience analysis"
---

Wednesday, March 31

Take a look at the [OSM2PGSQL](https://osm2pgsql.org/) program to understand how it translates OpenStreetMap data into PostGIS. 
  
## Expectations for Spatial Urban Resilience Analysis of Dar es Salaam

The question prompt for this analysis is posted on the previous page. Expectations for the analysis are:

- **Due Wednesday April 7**
- Work independently or in pairs, but publish the final results to both students' GitHub pages.
- Publish final result in the form of an interactive Leaflet map.
- If working in pairs, complement the Leaflet map with a static map designed for a static web view or and/for printing.
- Layers with large numbers of features will have difficulty displaying in a Leaflet map, so you might want to focus on displaying results aggregated by Ward or Subward, and for illustrative purposes select underlying features for particularly interesting wards for display.
- The lab report should include the following sections:
  - Question
  - Data & data citations & descriptions
  - Methods (verbal description of analysis with SQL code blocks, with sufficient explanation and detail to be reproduced)
  - Results (interpretation, with link to Leaflet map and any static maps)
  
## Wisdom for Spatial SQL

- Several manuals and tutorial resources were referenced on the first day of SQL 
- Use lowercase table names and column names and avoid using SQL keywords or function names for table names and column names
- Refresh the schema every time you: `ALTER TABLE`, `DROP TABLE`, `CREATE TABLE`, or `addgeometrycolumn()`
- Remember to alias the results of any function or calculation to a good field name with `AS` or the shorthand `.`
- Analyze attributes if possible, not geometries
- Keep geometries smaller / simpler wherever possible: points are better than polygons, single-part features better than multi-part features
- Create spatial indicies for large geographic datasets before applying any spatial function
- Test solutions with simple queries first, and use `LIMIT` to see if things are working before scaling up
- Check counts and totals of the data you're analyzing throughout the process to make sure you're not creating & propagating errors
- Write workflows as you know them from geog120 to help plan and keep track of what you're doing
- Keep the queries in your own SQL file, sequentially with semicolons, so that your work is reproducible
- Don't try viewing or previewing super complex tables. View the INFO tab and query with a `LIMIT` of just a few records
- Remember to type-cast any geometries created from spatial functions `::geometry(geometry_type,EPSG_code)`
- Almost everything involving two tables/layers is best accomplished with a `join`, including attribute joins, spatial joins, select by location, overlay analysis and distance analysis.
- OpenStreetMap can be surprising because the data is volunteered: different volunteers might use different tags, tag values, and geometries (points or polygons). Super-users *tend* to edit these things for consistency.

## Additional SQL Examples

- [more.sql](/assets/more.sql)

