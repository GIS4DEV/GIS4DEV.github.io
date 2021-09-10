---
layout: lesson
title: Malawi Climate Vulnerability Reproduction
purpose: "reproduce climate vulnerability model of Malawi"
format: workshop
date: 2021-11-04 13:30
---

## Investigate Data Sources & Revisit / Discuss Workflow

Now, it's time to investigate the data sources for the Malcomb et al (2014) study!

I suggest you divide up the task of investigating and describing the data sources and, based on what you find, revising the preanalysis plan. One way to slice it would be to use Table 2 to divide the task by:

- Assets
- Access
- Livelihood Sensitivity available [here](https://drive.google.com/file/d/1RKVGitv4HxFuCylYps-gGkt6OK4oAjJa/view?usp=sharing) for Middlebury students only.
- Physical Exposure

As each person finishes their section, join others with more complex data or rotate data sources. Make sure each data source gets a look by at least one person, and by the end, everyone should agree on the new preanalysis plan.

1. Make amendments to your preanalysis plan markdown document.
1. It should be possible for different group members to work simultaneously, as long as they work on different sections of the document.
1. When you are finished, create a second `release` titled `RP-Malcomb-Preanalysis-Plan-Data` and note in the description that this preanalysis plan was amended after investigating all data sources for the study, but prior to starting any analysis.

## Georeferencing Maps

- Please learn how to georeference & digitize the maps by following [this playlist](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=9e5891dc-42ab-405e-833b-ad0c0154f900)

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

## Lab

In lab we will:
- complete a reproduction of Malcomb et al (2014) !
- import and map a digital replica of the Malcomb et al published maps
- adjust our methods to fit the results of Malcomb et al as well as we can

I suggest tackling the challenge as such:
- as a group, make sure you've got the required data assembled for sensitivity of livelihood zones
- as a group, discuss a workflow plan for incorporating the livelihood zone data into your analysis
- transitioning to pairs / independent work, search for examples in the current R code for the operations you need
- learn through analogy: repurpose the code you find for processing sensitivity of livelihood zones
- make sure you get the code working on your won computer, but as always this is a collaborative environment in which questions and crosstalk are welcome.

The final report will be due on Tuesday.

Remember to give credit to your peers for their contributions while you finalize your own reproduction study & report independently.

The final analysis will reach the point of completing a reproduction of figures 3 and 4 and quantitatively comparing those results with the published maps in the paper. On Friday, we will discuss a strategy for this quantitative comparison.
