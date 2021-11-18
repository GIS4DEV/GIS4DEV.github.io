---
layout: lesson
title: Twitter Analysis Replication
purpose: "replicate Twitter disaster analysis in a new context"
format: lab
---

The goal of this lab is to replicate analyses of Twitter data in the context of natural hazards or another type of major event. Your analysis, therefore, may be very analogous to the Hurricane Dorian study, but must focus on a new case study and new set of data.

### Expectations

- Complete a GitHub repository / research compendium for a replication study, including a report
- The report discussion should compare your results to our Hurricane Dorian study and Wang et al (2016) and respond to any relevant concerns of Crawford and Finn (2014).
- Synthesize exciting findings in a blog post, linking to the research compendium

### Recommendations

- Modify the `OR-Dorian` repository to query your own set of data from Twitter.
- You may modify both the search terms and the geographic extent of the search.
- Remember that you may have to let the query run for a few hours if there are a high number of results.
- This type of analysis is highly dependent on trending Twitter activity over the past week. Create a query that will result in many thousands of tweets in the United States.
- You may also want a second query to establish a baseline of normal twitter activity not related to your search. This could be an identical query that simply removes the search term constraints, or an identical query that finds the inverse of the search terms (i.e. all tweets that *do not* contain any of the keyword search terms). This second query will enable you to calculate a normalized tweet difference index.
- Be cautious when mapping results from Getis Ord G*: you may not find all categories of significance, and this may require adjusting your map classification.
- Many researchers suggest [using Bonferroni correction](https://github.com/GIS4DEV/OR-Dorian/issues/2) to set more conservative critical values in the context of multiple hypothesis tests.
- There are opportunities to improve the analysis through:
  - better social network analysis, perhaps by including retweets
  - filter content by region, time, and/or scale to refine the semantic and network analysis

### Hurricane Ida Replication

- If you are interested in analyzing Hurricane Ida data, the code for searches is available [here](https://www.github.com/GIS4DEV/OR-Ida) (currently a private repository for Middlebury students) and the data is available [here](https://github.com/GIS4DEV/geog323data/tree/main/ida) (Middlebury students only).
- This disaster unfolded over a long period of time, requiring multiple Twitter API searches. The searches must be combined without duplicating Tweets, and checking if there are gaps.
- Retweets are included

### Saving graphs

- igraph [documentation](https://igraph.org/r/html/latest/)
- For ggplots, use `ggsave` as seen at the end of the [Malcomb reproduction](https://github.com/HEGSRR/RPr-Malcomb-2014/blob/main/procedure/code/02-Analysis.Rmd)
- For igraphs, use the [write_graph](https://igraph.org/r/doc/write_graph.html) function
- To adjust the size of images as show in RMarkdown notebooks, adjust the [code chunk options](https://bookdown.org/yihui/rmarkdown-cookbook/figure-size.html)
- To save other images, use `png`, `jpeg`, and `pdf` functions
