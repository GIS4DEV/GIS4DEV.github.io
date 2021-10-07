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

- Clone the template repository to your local computer from [https://github.com/HEGSRR/HEGSRR-Template](https://github.com/HEGSRR/HEGSRR-Template)
  - in GitHub desktop, Add -> Clone, use the `URL`, and change the name of the local path to end with a good repository name for this project, e.g. `dsm-resilience`
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
- Use QGIS to visualize final results in the form of an interactive Leaflet map following [this video tutorial](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=289eb2e3-1c62-4959-a4bc-adba00d820d6)
  - Save the leaflet map into `results\other`
- Update the top-level `readme.md` with your study title, author names, and very short description (abstract)
- Push your repository to GitHub

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
- Copy code blocks of SQL into to your report for each part of the analysis. Start blocks with three backticks and sql for the language:

~~~md
```sql
SELECT sql code here;
```
~~~

- You should not need code comments, because your description of the methods should explain enough.

- The lab report should include the following sections:
  - Question
  - Data & data citations & descriptions
  - Methods (verbal description of analysis with SQL code blocks, with sufficient explanation and detail to be reproduced)
  - Results (interpretation, with link to Leaflet map and any static maps)

## References

- [Leaflet](https://leafletjs.com/)
- [Geopackage](https://www.geopackage.org/)
