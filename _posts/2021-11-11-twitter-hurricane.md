---
layout: lesson
title: Twitter Disaster Data Analysis
purpose: "analyze spatial, temporal, and semantic patterns of Twitter data"
format: workshop
date: 2021-11-11 13:30
---

To begin learning how to analyze Twitter data, we will first focus on executing and studying a worked example of code investigating the spatial distribution of original tweets represents a fake tweet storm or the real risk and impact of [Hurricane Dorian](https://en.wikipedia.org/wiki/Hurricane_Dorian). Next week, we will replicate the Hurricane Dorian study with new independent analyses of Twitter data.

### Procedure

This week, please:

1. `Fork` and then `clone` the [OE-Dorian](https://github.com/GIS4DEV/OR-Dorian) repository.
1. Download [dorian_raw.RData](https://github.com/GIS4DEV/geog323data/raw/main/dorian/dorian_raw.RDS) into the `data/raw/private` folder
1. Download [november_raw.RData](https://github.com/GIS4DEV/geog323data/raw/main/dorian/november_raw.RDS) into the `data/raw/private` folder
1. Open the `OR-Dorian.Rproj` project in R
1. Read the notes below! You should not execute every code block of this notebook.
1. The current notebook does not generate maps of Tweet Density or Normalized Difference Tweet Index. Add two code chunks, one to create each of these maps using your favorite cartography package: `ggplot` or `tmap` or `mapsf`

### Workshop Notes

- Three versions of code for loading data exist in this repository notebook!
  1. Code is included for the **original Twitter searches** for the purpose of transparency and replicability. This code cannot be reproduced because of Twitter's short temporal search window.
  1. Code is included to **rehydrate** a list of Twitter status IDs. This will yield similar, but not identical, results.
  1. Code is included to load the **original Twitter data**, but this data cannot be shared with the public according to the Twitter [developer agreement and policy](https://developer.twitter.com/en/developer-terms/agreement-and-policy).
- The social network analysis does not work well with this data because there are too many nodes with few links. For better results, include retweets and replies in the original search.
- The final part of the analysis calculates spatial hotspots using the G* Getis-Ord statistic. We will study this statistic [next week](/2021-11-18-hot-spot).
