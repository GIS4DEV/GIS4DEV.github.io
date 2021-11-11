---
layout: lesson
title: Twitter Disaster Data Analysis
purpose: "analyze spatial, temporal, and semantic patterns of Twitter data"
format: workshop
date: 2021-11-11 13:30
---

To begin learning how to analyze Twitter data, we will first focus on executing and studying a worked example of code investigating the spatial distribution of original tweets represents a fake tweet storm or the real risk and impact of [Hurricane Dorian](https://en.wikipedia.org/wiki/Hurricane_Dorian). Next week, we will replicate the Hurricane Dorian study with new independent analyses of Twitter data.

This week, please:

1. `Fork` and then `clone` the `[OE-Dorian](https://github.com/GIS4DEV/OR-Dorian)` repository.
1. Download [dorian_raw.RData](https://github.com/GIS4DEV/geog323data/raw/main/dorian/dorian_raw.RDS) into the `data/raw/private` folder
1. Download [november_raw.RData](https://github.com/GIS4DEV/geog323data/raw/main/dorian/november_raw.RDS) into the `data/raw/private` folder
1. Open the `OR-Dorian.Rproj` project in R
1. The network analysis does not work well with this data-- there are too many nodes with few links.

Note! Three versions of code for loading data exist in this repository notebook!
1. Code is included for the **original Twitter searches** for the purpose of transparency and replicability. This code cannot be reproduced because of Twitter's short temporal search window.
- Code is included to **rehydrate** a list of Twitter status IDs. This will yield similar, but not identical, results.
- Code is included to load the **original Twitter data**, but this data cannot be shared with the public according to the Twitter [developer agreement and policy](https://developer.twitter.com/en/developer-terms/agreement-and-policy). 
