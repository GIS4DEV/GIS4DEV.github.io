---
layout: lesson
title: Comparing Choropleth Maps
purpose: "learn methods to quantitatively assess Choropleth map agreement and accuracy"
---

Friday, April 23

Prior to Friday's class, you should have:

* complete reproduction of Malcomb et al in R
* digital replicas of Malcomb et al's published maps in R

Universally applicable tips for revising GitHub profiles are being compiled [here](99_theend)

## Comparing Choropleth Maps

Today, we'll investigate the question of how to compare choropleth maps for agreement between the maps or for assessment of accuracy.

Let's connect back to concepts in the Longley et al chapter on *Uncertainty* as well as E Tate's (2013) Uncertainty Analysis for a Social Vulnerability Index

- Real world ~U1~ Conception ~U2~ Measurement & Representation ~U3~ Analysis :: consider these both in terms of geographic features and in terms of attributes
- Internal Validation, Monte Carlo simulation
- External Validation & Ground Truthing
- Discrete vs Continuous (fuzzy) representations of space and of categories
- Nominal Data: Confusion Matrix and derived statistics: producer's accuracy, consumer's accuracy, and Kappa
- Interval and Ratio Data: precision, accuracy, and Root Mean Square Error
- Modifiable Areal Unit Problem (MAUP)

What about *ordinal* data, which is every choropleth map?

- Wikipedia [Spearman's Rank Correlation](https://en.wikipedia.org/wiki/Spearman%27s_rank_correlation_coefficient)
- STHDA [Correlation Tests in R] (http://www.sthda.com/english/wiki/correlation-test-between-two-variables-in-r)
- R [corr function](https://www.rdocumentation.org/packages/emulator/versions/1.2-20/topics/corr)

## What is an API?

Application Program Interface! Examples:

- [DHS Surveys](https://api.dhsprogram.com)
- [Census](https://www.census.gov/data/developers/data-sets.html)
- [OpenStreetMap Overpass](https://wiki.openstreetmap.org/wiki/Overpass_API)
- [QGIS](https://qgis.org/api/3.10/)
- [GRASS](https://grasswiki.osgeo.org/wiki/GRASS_GIS_APIs)
- [Twitter](https://developer.twitter.com/en/docs/twitter-api)

If an API is useful for data science, it's common to find an R package allowing you to connect to that API

- [rdhs](https://cran.r-project.org/package=rdhs)
- [tidycensus](https://cran.r-project.org/package=tidycensus)
- [osmdata](https://cran.r-project.org/web/packages/rgrass7/index.html)
- [rtweet](https://cran.rstudio.com/package=rtweet)
- [rqgis](https://github.com/r-spatial/RQGIS)
- [rgrass7](https://cran.r-project.org/web/packages/rgrass7/index.html)

## Set up Twitter Developer API Account

**Important!** To proceed with the next GIS analysis, you will need a Twitter Developer API Account. Apply for this account today! Sometimes the application is initially rejected... so don't delay. See instructions [here](2021-04-28-twitter)

