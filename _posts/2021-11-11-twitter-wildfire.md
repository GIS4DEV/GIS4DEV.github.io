---
layout: lesson
title: Twitter Data and Disasters
purpose: "study Twitter data structure and analytical methods for disaster data"
format: lecture
date: 2021-11-11 09:30
---

## Reading

1. Wang, Z., X. Ye, and M. H. Tsou. 2016. Spatial, temporal, and content analysis of Twitter for wildfire hazards. *Natural Hazards* 83 (1):523–540. DOI:[10.1007/s11069-016-2329-6](https://doi.org/10.1007/s11069-016-2329-6).

## Discussion

1. Summarize the analytical techniques applied and how the results of those techniques were communicated in text, numbers, tables, or data visualizations
2. Do you consider this research paper to be *reproducible*?
3. Do you consider this paper to be *replicable*?
4. Recall our definitions and discussions of [R&R in Geography](r-and-r)

## Spatial Twitter Research Resources

Where to get free historic twitter data?

- [GWU Libraries](https://gwu-libraries.github.io/sfm-ui/posts/2017-09-14-twitter-data)
- [trackmyhashtag](https://www.trackmyhashtag.com/blog/twitter-datasets-free)

Resources for using `rtweet` to drive the Twitter Search API (6-8 days of recent tweets; more recently less)

- [rtweet](https://docs.ropensci.org/rtweet/) and its [search_tweets](https://rtweet.info/reference/search_tweets.html) function
- Twitter [Search API](https://developer.twitter.com/en/docs/tweets/search/api-reference/get-search-tweets)
- Tweet [objects](https://developer.twitter.com/en/docs/tweets/data-dictionary/overview/tweet-object)
- Tweet object [geospatial metadata](https://developer.twitter.com/en/docs/tutorials/tweet-geo-metadata)
- Example tweet payload (with annotations): [example_tweet.json](/assets/example_tweet.json)
- [rehydratoR](https://kevincoakley.github.io/rehydratoR/): download tweets using tweet ID's


## Lab

Twitter analysis in R to be posted here! Similar to the strategy with Malcomb et al, we'll first focus on executing and studying a worked example of code, and then we'll focus on improving the analysis & applying to a new case: assessing whether the spatial distribution of original tweets represents a fake tweet storm or the real risk and impact of [Hurricane Dorian](https://en.wikipedia.org/wiki/Hurricane_Dorian)

1. Please fork and then clone the `RE-Dorian` repository.
1. Download [dorian_raw.RData](https://github.com/GIS4DEV/geog323data/raw/main/dorian/dorian_raw.RDS) into the `data/raw/private` folder
1. Download [november.RData](https://github.com/GIS4DEV/geog323data/raw/main/dorian/november.RDS) into the `data/derived/private` folder
