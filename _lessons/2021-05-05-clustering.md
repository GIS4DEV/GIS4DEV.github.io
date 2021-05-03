---
layout: lesson
title: Spatial Hot Spots in Twitter
purpose: "learn and apply the Getis Ord hot spot statistic"
---

Wednesday, May 5

## Lecture

- Getis Ord [handout](https://github.com/GIS4DEV/literature/blob/master/G.pdf)
- Getis Ord [spreadsheet](assets/GetisOrd.xlsx)
- spdep package [localG man](https://rdrr.io/rforge/spdep/man/localG.html) and [localG page](https://www.rdocumentation.org/packages/spdep/versions/1.1-3/topics/localG)
- ArcGIS [Getis Ord](https://pro.arcgis.com/en/pro-app/tool-reference/spatial-statistics/h-how-hot-spot-analysis-getis-ord-gi-spatial-stati.htm)
- GeoDa [Local G](https://geodacenter.github.io/workbook/6a_local_auto/lab6a.html#fig:localgearyclus01)
- Casey Lilley's [spatial autocorrelation in R](https://caseylilley.github.io/finalproj.html)
- Michael Minn's [basic point pattern analysis in R](http://michaelminn.net/tutorials/r-point-analysis/)

### Reference

Ord, J. K., and A. Getis. 1995. Local Spatial Autocorrelation Statistics: Distributional Issues and an Application. *Geographical Analysis* 27 (4):286–306. DOI:[10.1111/j.1538-4632.1995.tb00912.x](https://doi.org/10.1111/j.1538-4632.1995.tb00912.x)

## Before Lab   

Before next Lab, make a copy of the `01-search-dorian.r` script in your `RE-Dorian` repository and modify it to query your own set of data from Twitter and prepare it for mapping just as we have done here!

You may modify both the search terms and the geographic extent of the search.

Remember that you may have to let the query run for a few hours if there are a high number of results.

This type of analysis is highly dependent on trending twitter activity over the past week. Create a query that will result in many thousands of tweets in the United States.

You may also want a second query to establish a baseline of normal twitter activity not related to your search. This could be an identical query that simply removes the search term constraints, or an identical query that finds the inverse of the search terms (i.e. all tweets that *do not* contain any of the keyword search terms). This second query will enable you to calculate a normalized tweet difference index.

## Lab

Complete a spatial analysis of clustering in Twitter data with your own search data!

Ideas for further (introductory-level) Twitter analysis, Michael Kearney's [intro to rtweet](https://mkearney.github.io/blog/2017/06/01/intro-to-rtweet/)