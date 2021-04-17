---
layout: lesson
title: Georeferencing and Digitizing
purpose: "use a tutorial to georeference and digitize PDF maps"
---

Please learn how to georeference & digitize the maps by following [this playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=9e5891dc-42ab-405e-833b-ad0c0154f900)

In general, the workflow is to:
1. Save a digital map image
1. Georeference the map
1. Create a vector data layer matching the regions in the study (traditional authorities or raster grids, which can be made with `raster pixels to polygons`)
1. Extract values from the map with `zonal statistics`
1. Classify and visualize the results

## Prepare by Wednesday...

Individually, you should have **completed the R script from lab** and completed the tutorial such that you have **digitized vector versions of figures 4 and 5** in the Malcomb et al article. 

As a group, you should have a **complete data section for your report** (data sources, transformations, and important characteristics for research and reserach validity, e.g. time-scale, spatial scale, missing data, provenance). Feel free to divide up the task of looking into different datasets & variables.  As part of this group task, you should decide how you need to use the FEWSnet Livelihood Zones data and **create a single data table of required variables by livelihood zone**. I don’t see any good way of automating this with the relatively small number of livelihood zones we’re dealing with. You could either do this in any spreadsheet program and save as an excel sheet or csv for joining in GIS, or edit the attribute table directly in QGIS or R.

Since it's relatively easy to do a video tutorial on your own time and more difficult to get together as a group, I suggest doing the group tasks in class time on Monday. I'll be in the Orchard if you have any questions!
