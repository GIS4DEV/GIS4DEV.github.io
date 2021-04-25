---
layout: lesson
title: Comparing Choropleth Maps
purpose: "learn methods to quantitatively assess Choropleth map agreement and accuracy"
---

Friday, April 23

Prior to Friday's class, you should have:

* complete reproduction of Malcomb et al in R
* digital replicas of Malcomb et al's published maps in R

## Important Announcements

- Universally applicable tips for revising GitHub profiles are being compiled [here](99_theend)
- To proceed with the next GIS analysis, you will need a Twitter Developer API Account. Apply for this account today! Sometimes the application is initially rejected... so don't delay. See instructions [here](2021-04-28-twitter)
- Recall the handout and reading from [last Friday](2021-04-16-tate) and the [uncertainty topic](03b_uncertainty): they will help you interpret your reproduction results. You were not asked for a blog post because the reading should contribute to your reproduction report.

## Research Skills

- Critical reading of scientific literature
- Investigation of metadata & data sources
- Reading a [research compendium](https://arxiv.org/abs/1806.09525)
- Assessing and visualizing error and uncertainty
- Knowledge of complete research process
- Doing and publishing reproducible research

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
- STHDA [Correlation Tests in R](http://www.sthda.com/english/wiki/correlation-test-between-two-variables-in-r)
- R [cor function](https://www.rdocumentation.org/packages/stats/versions/3.6.2/topics/cor)

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

Additionally, if a data course is useful for data science, it's common to find an R package specific to loading that data source. For example:

- [GADMTools](https://cran.r-project.org/package=GADMTools) for [GADM](https://gadm.org/)
- [rnaturalearth](https://cran.r-project.org/package=rnaturalearth) for [Natural Earth](https://www.naturalearthdata.com/)

## Sample Code for Comparing Discrete Choropleth Maps

```r
or_fig4 = # load original figure 4 data
  read_sf(here("data", "derived", "public", "georeferencing.gpkg"), 
          layer="ta_resilience") %>% 
  # load ta_resilience layer from georeferencing geopackage
  st_drop_geometry() %>%
  # remove the geometry data because two geometries cannot be joined
  select(c(ID_2,resilience)) %>%  
  # select only the ID_2 and resilience columns
  na.omit()
  # remove records with null values

rp_fig4 = ta_2010 %>% # prepare our reproduction of figure 4 data
  select(c(ID_2,capacity_2010)) %>%  
  # select only the ID_2 and resilience columns
  # note: geometry columns are 'sticky' -- only way to remove is st_drop_geometry()
  na.omit()  %>%
  # remove records with null values
  mutate(rp_res = case_when(
  capacity_2010 <= ta_brks[2] ~ 1,
  capacity_2010 <= ta_brks[3] ~ 2,
  capacity_2010 <= ta_brks[4] ~ 3,
  capacity_2010 >  ta_brks[4] ~ 4
))
# code the capacity scores as integers, as we see them classified on the map. 
#ta_brks was the result of a Jenks classification, as noted on Malcomb et al's maps

fig4compare = inner_join(rp_fig4,or_fig4,by="ID_2") %>%  
  #inner join on field ID_2 keeps only matching records
  filter(rp_res>0 & rp_res<5 & resilience > 0 & resilience < 5)
  # keep only records with valid resilience scores

table(fig4compare$resilience,fig4compare$rp_res)
# crosstabulation with frequencies

cor.test(fig4compare$resilience,fig4compare$rp_res,method="spearman")
# Spearman's Rho correlation test

fig4compare = mutate(fig4compare, difference = rp_res - resilience) 
# Calculate difference between the maps so that you can create a difference map
```

## Sample Code for Comparing Continuous Raster Maps

```r
orfig5vect = 
  read_sf(here("data", "derived", "public", "georeferencing.gpkg"), 
          layer="vulnerability_grid")
# load original figure 5 data

orfig5rast = st_rasterize(orfig5vect["bmean"], template=ta_final)
# convert mean of blue values into a raster using ta_final as a reference for raster
# extent, cell size, CRS, etc.

orfig5rast = orfig5rast %>% 
  mutate(or = 1-
           (bmean - min(orfig5rast[[1]], na.rm= TRUE)) /
           (max(orfig5rast[[1]], na.rm= TRUE) -
            min(orfig5rast[[1]], na.rm= TRUE)
        )
)  # or is Re-scaled from 0 to 1 with (value - min)/(max - min)
# it is also inverted, because higher blue values are less red


ta_final = ta_final %>% 
  mutate(rp =
           (capacity_2010 - min(ta_final[[1]], na.rm= TRUE)) /
           (max(ta_final[[1]], na.rm= TRUE) -
            min(ta_final[[1]], na.rm= TRUE)
        )
)  # rp is Re-scaled from 0 to 1 with (value - min)/(max - min)

fig5comp = c( select(ta_final,"rp"), select(orfig5rast,"or"))
# combine the original (or) fig 5 and reproduced (rp) fig 5

fig5comp = fig5comp %>% mutate( diff = rp - or )
# calculate difference between the original and reproduction,
# for purposes of mapping

fig5comppts = st_as_sf(fig5comp)
# convert raster to vector points to simplify plotting and correlation testing

plot(fig5comppts$or, fig5comppts$rp, xlab="Original Study", ylab="Reproduction")
# create scatterplot of original results and reproduction results

cor.test(fig5comppts$or, fig5comppts$rp, method="spearman")
# Spearman's Rho correlation test

# Hint for mapping raster results: refer to the diff raster attribute
# in the fig5comp stars object like this: fig5comp["diff"]
```

## Finalizing the Reproduction Study

The code blocks above will help you to integrate your georeferenced results from QGIS with your final results from the study in R. Of course, you may have to modify the file names, layer names, and column names to match the data as you created it in QGIS and R.

To finalize the study, make the following figures:
- map of your reproduction results for figure 4
- map of your reproduction results for figure 5
- map to visualize the difference of results for figure 4
- map to visualize the difference of results for figure 5
- table to quantify the difference of results for figure 4
- scatterplot graph to visualize the difference of results for figure 5
- spearman's *rho* correlation results for figure 4 and for figure 5 
- the sample size is so large that the *p-value* is not very meaningful for either correlation test

You can save all of these figures as `.png` files into your repository's `results` folder using R code.
One great thing about doing cartography in R is that you can repurpose code from one map to the next!