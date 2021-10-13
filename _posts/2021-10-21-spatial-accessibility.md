---
layout: lesson
title: COVID-19 Spatial Accessibility
purpose: "study COVID-19 spatial accessibility of health care"
format: lecture
date: 2021-10-21 09:30
---

## Reading

Kang, J. Y., A. Michels, F. Lyu, Shaohua Wang, N. Agbodo, V. L. Freeman, and Shaowen Wang. 2020. Rapidly measuring spatial accessibility of COVID-19 healthcare resources: a case study of Illinois, USA. *International Journal of Health Geographics* 19 (1):1–17. DOI:[10.1186/s12942-020-00229-x](https://doi.org/10.1186/s12942-020-00229-x).

## Analysis

To the best of your ability, draw or outline a workflow for this analysis. You may work in partners or small groups on this task.

## API: Application Program Interface

This analysis makes use of multiple APIs, including access to data from the Census and from OpenStreetMap.
An API is an interface for passing data or commands between different software programs ([Wikipedia](https://en.wikipedia.org/wiki/API))

- [DHS Surveys](https://api.dhsprogram.com)
- [Census](https://www.census.gov/data/developers/data-sets.html)
- [OpenStreetMap Overpass](https://wiki.openstreetmap.org/wiki/Overpass_API)
- [QGIS](https://qgis.org/api/3.10/)
- [GRASS](https://grasswiki.osgeo.org/wiki/GRASS_GIS_APIs)
- [Twitter](https://developer.twitter.com/en/docs/twitter-api)
- [Google Earth Engine](https://r-spatial.github.io/rgee/)

If an API is useful for data science, it is very common to find packages facilitating connection to the API from Python or R.

- [rdhs](https://cran.r-project.org/package=rdhs)
- [tidycensus](https://cran.r-project.org/package=tidycensus)
- [osmdata](https://cran.r-project.org/web/packages/rgrass7/index.html)
- [rtweet](https://cran.rstudio.com/package=rtweet)
- [rqgis](https://github.com/r-spatial/RQGIS)
- [rgrass7](https://cran.r-project.org/web/packages/rgrass7/index.html)

Additionally, if a data course is useful for data science, it's common to find an R package specific to loading that data source. For example:

- [GADMTools](https://cran.r-project.org/package=GADMTools) for [GADM](https://gadm.org/)
- [rnaturalearth](https://cran.r-project.org/package=rnaturalearth) for [Natural Earth](https://www.naturalearthdata.com/)
