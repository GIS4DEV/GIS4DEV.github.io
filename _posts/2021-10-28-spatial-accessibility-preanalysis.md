---
layout: lesson
title: COVID-19 Spatial Accessibility Preanalysis
purpose: "plan reanalysis or replication of COVID-19 spatial accessibility"
format: lecture
date: 2021-10-28 09:30
---

## Prepare for lecture

Brainstorm ways in which the research compendium for this notebook could be improved, including revisions to:

- fix errors
- reduce uncertainty
- improve reproducibility
- improve visualization of results

We will collaborate in an in-person class discussion to more deeply understand the Python script for this analysis and identify opportunities for improving and extending its functionality, especially to more completely implement the analysis in the published research paper.

## Results from spring 2021

The Spring 2021 lecture concluded with a challenge: what is the largest source of error in the current version of the python Jupyter notebook?
We determined the answer to be *boundary effects* introduced to the analysis when the geographic extent was limited to Chicago.
The road network was limited to boundaries for Chicago that exclude Midway Airport, while population data was limited to boundaries for Chicago including the airport, and hospitals were included within a buffer distance of Chicago. The inconsistent spatial extents caused the Midway Airport area to seem inaccessible to health care, and caused hospitals in the buffer outside of Chicago to snap to the nearest node of the road network without accounting for the distance between the hospital and the boundary of Chicago.
Finally, services outside of Chicago were included but population demand on those services was not.
