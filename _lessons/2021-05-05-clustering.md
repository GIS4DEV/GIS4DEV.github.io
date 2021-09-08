---
layout: lesson
title: Spatial Hot Spots in Twitter
purpose: "learn and apply the Getis Ord hot spot statistic"
---

Wednesday, May 5

## Lecture

- Getis Ord [handout](https://github.com/GIS4DEV/literature/blob/master/G.pdf)
- Getis Ord [spreadsheet](/assets/GetisOrd.xlsx)
- spdep package [localG man](https://rdrr.io/rforge/spdep/man/localG.html) and [localG page](https://www.rdocumentation.org/packages/spdep/versions/1.1-3/topics/localG)
- ArcGIS [Getis Ord](https://pro.arcgis.com/en/pro-app/tool-reference/spatial-statistics/h-how-hot-spot-analysis-getis-ord-gi-spatial-stati.htm)
- GeoDa [Local G](https://geodacenter.github.io/workbook/6b_local_adv/lab6b.html#getis-ord-statistics) caution: this page appears to give an incorrect simpler version of the statistic from 1992. The software implements the full 1995 formula.
- Casey Lilley's [spatial autocorrelation in R](https://caseylilley.github.io/finalproj.html)
- Michael Minn's [basic point pattern analysis in R](http://michaelminn.net/tutorials/r-point-analysis/)

### Reference

- Ord, J. K., and A. Getis. 1995. Local Spatial Autocorrelation Statistics: Distributional Issues and an Application. *Geographical Analysis* 27 (4):286–306. DOI:[10.1111/j.1538-4632.1995.tb00912.x](https://doi.org/10.1111/j.1538-4632.1995.tb00912.x)
- Rogerson, P. A. 2006. Statistical Methods for Geography: A Student’s Guide. SAGE Publications. (this has a new addition, 2020)

## Before Lab   

- Before next Lab, make a copy of the `01-search-dorian.r` script in your `RE-Dorian` repository and modify it to query your own set of data from Twitter and prepare it for mapping just as we have done here!
- You may modify both the search terms and the geographic extent of the search.
- Remember that you may have to let the query run for a few hours if there are a high number of results.
- This type of analysis is highly dependent on trending twitter activity over the past week. Create a query that will result in many thousands of tweets in the United States.
- You may also want a second query to establish a baseline of normal twitter activity not related to your search. This could be an identical query that simply removes the search term constraints, or an identical query that finds the inverse of the search terms (i.e. all tweets that *do not* contain any of the keyword search terms). This second query will enable you to calculate a normalized tweet difference index.

## Lab

New Dorian-RE Repository has been updated, including:
- Code to complete the full analysis in R
- Sample code for saving and loading `.RDS` files for peace of mind and reproducibility
- Spatially joining Twitter data to counties
- Calculating and mapping the Getis-Ord statistic
- Template report for the GIS analysis

I suggest that you:
- Fork/clone a new copy of the new repository (either change the name of the old one, or change the name of the fork while creating it
- Run through the analysis to refresh your memory and understand the new code
- Note any code parameters that may need to change to suit your own Twitter search data
- Implement your own version of spatial Twitter anlaysis and write up a report

**Due: Tuesday May 11**

Ideas for further (introductory-level) Twitter analysis, Michael Kearney's [intro to rtweet](https://mkearney.github.io/blog/2017/06/01/intro-to-rtweet/)