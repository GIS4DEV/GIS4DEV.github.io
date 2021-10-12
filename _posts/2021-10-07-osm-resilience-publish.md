---
layout: lesson
title: Publish an Urban Resilience Research Compendium
purpose: "publish a spatial urban resilience analysis"
format: workshop
date: 2021-10-07 13:30
---

## Expectations

The purpose of this workshop is to help you publish your Urban Resilience project from the previous lab as a research compendium. Therefore, there is no separate deliverable due to be graded for this workshop, as the work is folding into your [OSM and PostGIS for Urban Resilience](OSM-resilience-implement) lab.

The published lab is due on **Tuesday, October 12**

## Suggested workflow for research compendium

- Go to the template repository [https://github.com/HEGSRR/HEGSRR-Template](https://github.com/HEGSRR/HEGSRR-Template)
  - Use the green `Use this template` button to [create a new repository from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
  - Create a copy of the template in your own GitHub account using a good repository name for this project, e.g. `dsm-resilience`
  - Clone your new template to your local computer
- Save any resilience academy data you are using to the `data\raw\public` folder.
  - GeoJSON is a good file format for GitHub, since it is saved as plain text and is just one file.
  - If the data is `>100mb`, save it to `data\raw\private`
- Save any resilience academy metadata to the `data\metadata` folder (ISO format is best)
- Read and save the [OpenStreetMap license](https://www.openstreetmap.org/copyright) to the `data\metadata` folder, e.g. by printing to PDF
- Save processing environment data to the `procedure\environment` folder as a `.md` markdown file
  - PostGIS environment information can be accessed with the query: `SELECT PostGIS_Full_Version()`
  - QGIS environment information can be accessed from the QGIS menu: Help -> About
- Save your SQL code to `procedure\code` (the .r code can be deleted)
- Load important results into QGIS
- Save the QGIS project into the `data\scratch` folder
- Save important results from QGIS into `data\derived\public` as geopackages
- Prepare QGIS project for publishing Leaflet QuickMapServices
  - Add the OpenStreetMap basemap to QGIS using the QuickMapServices plugin
  - Set a good project name and abstract for the project, which will be used in an Information popup on the Leaflet map (project properties -> metadata -> title and abstract)
- Use QGIS to visualize final results in the form of an interactive Leaflet map following [this video tutorial](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=289eb2e3-1c62-4959-a4bc-adba00d820d6)
  - You may need to save the results into the `WGS 1984` geographic coordinate system for compatibility with leaflet
  - Save the leaflet map into `results\other`
- Update the top-level `readme.md` with your study title, author names, and very short description (abstract)
- Update the three `csv` metadata files to indicate 1) your data layers, 2) your code file(s), and 3) your results files
- Push your repository to GitHub.com

## Suggested workflow for research blog report

- Create a new subfolder in your `.github.io` repository
- Copy into that new subfolder:
  - your `report.md` report
  - your leaflet map
  - save an image of your results from either QGIS or a screen capture of your leaflet map
- Add YAML header information to the top of your report, similar to your other posts
- At the top of your report, add links to your research compendium repository and your leaflet map
- Include an image of your results early on, to keep your readers' interest!
- If you have drawn a neat version of a workflow, you may include an image of it to help illustrate your methods.
- Copy code blocks of SQL into to your report for each part of the analysis. Start blocks with three backticks and `sql` for the code language:

~~~markdown
```sql
SELECT sql code here;
```
~~~

- You should not need code comments, because your description of the methods should explain enough.
- Finally, link to your post from the main page!

## Including raw OpenStreetMap data

- The OpenStreetMap data for this lab was downloaded on 2021-03-23 by Joseph Holler
- It is available for the public to download from https://geography.middlebury.edu/jholler/data/dsmosm.osm
- Using Windows, it was imported into a PostGIS database using one command line code, saved in the [dsm_import.bat](/assets/dsm_import.bat) batch script for Windows
- This batch script uses the [dsm.style](/assets/dsm.style) style file for the [OSM2PGSQL](https://osm2pgsql.org/) program, which must be installed separately

## References

- [Leaflet](https://leafletjs.com/)
- [Geopackage](https://www.geopackage.org/)
