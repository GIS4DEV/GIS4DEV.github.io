---
layout: lesson
title: "Gravity Model: Finalize & Publish"
purpose: "complete a solution for the Gravity model and publish to GitHub"
---

In our afternoon lecture time, our *asynchronous* tasks will be to:

- finalize the gravity model work
- follow a tutorial on publishing the work to GitHub, ultimately including:
  - a `model3` file for the gravity model of spatial interaction
  - (a) `model3` file(s) or thorough documentation for preprocessing hospital data
  - a GitHub page detailing
    - purpose of the models
    - data sources and references, including appropriate links
    - reproducible documentation of methods, where documentation includes...
    - images of the models
    - links to the `.model3` model files
    - interpretation of model results *vis-a-vis* the Dartmouth Health Atlas
  - a web map of your results with ~~four~~ three layers
    - hospital clusters
    - calculated hospital catchments
    - hospital catchments given by the Dartmouth Atlas ~~you may exclude this one from your static map~~ 

## Before Class on Monday

Please complete:
- a gravity model implementation and page on GitHub
- reading on GIS as a (replicable) Science with a blog-style page on GitHub (see next lesson)
- our crowdsourced [Honor Code](00c_honorcode.html) has been posted.

*Class will meet* **in person** *in the Orchard!*

## Instructions on finalizing & publishing to the web

If you want to analyze a different region, feel free to do so! You'll just have to get population by town or by zip code tabulation area on your own. Self-admittedly, I don't know how to use the U.S. Census webpage anymore. They supposedly made it easier to use? I acquire all of my census data with Tidycensus in R studio now. Here's [an example](https://github.com/GIS4DEV/USCensus). To download data on towns, the census geographic unit is called `"county subdivision"`, and the variable for total population is `"B01003_001"`.

**Challenge**: As you finalize your analysis, try to use your tool to customize the gravity model parameters in order to make your hospital catchments more closely match the Dartmouth Atlas of Health Care Hospital Service Areas.

Here is an *old* [instruction sheet](/assets/qgis2web.pdf)
A newer version of everything is show in the QGIS Model [video playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=324cb720-6901-48e2-b57a-acdf014ab826), starting with [finalizing results](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=7e55c4d2-8072-4049-bb9d-ace201042448)
