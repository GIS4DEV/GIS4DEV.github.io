---
layout: lesson
title: COVID-19 Spatial Accessibility Replication
purpose: "reanalyze/replicate COVID-19 spatial accessibility"
format: lab
date: 2021-10-28 13:30
---

## Expectations

The purpose of this lab is to publish a reproduction of the COVID-19 Spatial Accessibility Notebook.

The published lab is due on **Tuesday, November 2**

- Make some (modest) improvements to the Where COVID-19 notebook and repository (ideas based on lecture discussion)
- Push changes from CyberGISX to your GitHub Repository
- Revise the repository to document your contributions as a new author and to document any new data sources or results saved in the repository.
- Publish a report for the reproduction analysis, saved in the repository and then copied as a new post to your GitHub site. An outline for the report is provided below.
- Based on class discussion, your reproduction of this study should include three interventions:
1. Additional code comments and/or markdown explanations of the methods as you understand them
1. Fix for one major error in the current version of the code (class may collaborate on this)
1. Address any one minor contribution you wish to make (ideas from spring 2021 listed below)

#### Note on pushing changes to GitHub

The new network graph file is over `100mb` in size, above the max file size limit on GitHub. Therefore we cannot version-track it or push it to GitHub. That's ok, because you're updating code to generate that graph from OSM directly. **However**, you'll need to add only your python notebook or other small data files to any Git commit, e.g. rather than using `git add .` to add all files, use `git add COVID-19Acc.ipynb` to add and commit the Jupyter python notebook specifically. Alternatively, download the notebook from CyberGISX and add it to your repository locally or on GitHub.com. Remember there were instructions for Git command line [last week](2021-05-12-whereCovid19)

### Report Outline

- **Introduction** explaining the interest and purpose in reproducing the Kang et al (2020) study, and very briefly introducing what the study was about.
- **Materials and Methods** briefly explaining and citing what data sources and computational resources were used for the study. Explain any changes you made to the original python notebook / repository.
- **Results and Discussion** include images of findings (maps, graphs) and link to your final repository for the reproduction. Discuss what you learned from the reproduction attempt, especially any knowledge, insight, or uncertainty that was *encoded in the repository* or *discovered in the reproduction* but not *explained in the published paper*.
- **Conclusions** with emphasis on the significance of the reproduction study you just completed. Was the study reproducible, and has the reproduction study increased, decreased, or otherwise refined your belief in the validity of the original study? Conclude with any insights, priorities, or questions for future research.
- **Note on Style**: Remember that the primary motivation for reproduction and replication studies is not punitive. Frame your discussions in this report and previous reports in the constructive motivation for improving scientific knowledge through peer review. Project like CyberGISX generally, and the Kang et al 2020 publication specifically, are *very new* in geography, and our engagement with them should be both *encouraging* and *constructive* while emphasizing the *value of open science*.

### Spring 2021 class ideas for modest contributions

- There are other models besides two-step catchment analysis for spatial interaction in health geography, e.g. gravity model.
- How important or efficient is the network simplification function? Does this impact the locations/connectivity of any hospitals?
- Clarify use of packages and functions throughout the code
- Could area-weighted reaggregation be used for the overlap analysis?
- Why are hexagons used for the analysis as opposed to other spatial data structures, e.g. a raster-like tessellation of squares? In other words, is there a modifiable areal unit problem? Does the use of different sizes and shapes for the unit of analysis matter?
- How are weights justified for the enhanced distance bands? Would different weights significantly change outcomes?
- Filter hospital types in the code, rather than beforehand.
- Should the default network speed be set to 35mph?
- Could other forms of transit be included? Why is the analysis dependent upon personal vehicle use?
- Is there a better indicator for hospital capacity other than ventilators?
- Pay attention to CRSs: are they always transformed when they need to be? Can the final maps be projected?
- Add time benchmark to key sections of code with `%%time` as the first line of the code block

### Suggestion

Last week, we cloned the repository to the CyberGISX virtual computing platform. It might also help to clone your repository to your local computer through GitHub Desktop, in order to easily view input and output data in QGIS. Just remember to commit and push changes from CyberGISX to your GitHub account! It may also help to add code to the notebooks to save intermediary results as geopackages for the purpose of viewing and checking results.
