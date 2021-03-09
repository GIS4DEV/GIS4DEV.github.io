---
layout: page
title: GIS as Reproducible Science
purpose: "debate whether GIS is a reproducible and replicable science"
---



## Introduction

- Main Questions
  - How do geomorphologists use spatial analysis to classify river and stream systems?
  - How can we implement the spatial analysis using geographic information systems?
  - To what degree might data errors and uncertainty in the analytical techniques create uncertainty and problems of reproducibility in 

- Software
  - [GRASS](https://grass.osgeo.org/) (installs automatically with QGIS)
  - [RStudio Desktop](https://rstudio.com/) (popular free software for using the open source [R Project of Statistical Computing](https://www.r-project.org/) programming language)
  
- References
  1. Rosgen, D. L. 1994. A classification of natural rivers. *CATENA* 22 (3):169–199. https://linkinghub.elsevier.com/retrieve/pii/0341816294900019.
  1. Kasprak, A., N. Hough-Snee, T. Beechie, N. Bouwes, G. Brierley, R. Camp, K. Fryirs, H. Imaki, M. Jensen, G. O’Brien, D. Rosgen, and J. Wheaton. 2016. The blurred line between form and process: A comparison of stream channel classification frameworks ed. J. A. Jones. *PLOS ONE* 11 (3):e0150293. https://dx.plos.org/10.1371/journal.pone.0150293.
  1. EPA. N.D. Fundamentals of Rosgen Stream Classification System in *Watershed Academy* available at [https://cfpub.epa.gov/watertrain/moduleFrame.cfm?parent_object_id=1189](https://cfpub.epa.gov/watertrain/moduleFrame.cfm?parent_object_id=1189) as part of the Environmental Protection Agency's [Online Training in Watershed Management](https://www.epa.gov/watershedacademy/online-training-watershed-management) 
  
- Materials
  1. Start by using GitHub Desktop to *clone* the [rosgenrr respository](https://github.com/GIS4DEV/rosgenrr) from the GIS4DEV organization. Clone the repository to a location with *plenty of storage capacity* as this project uses some very large GIS datasets.
  
- Procedure
  1. Starting in GRASS
  1. Digitizing in GRASS
  1. Transects and Profiles
  1. Classifying a Stream

## Geomorphology Concepts
  1. [Bite-Sized Geomorphology Youtube Playlist](https://www.youtube.com/playlist?list=PLwGh8-JsjthvCaWgtZA0Hp1cx3qgTGnHC) ; Slides found in the [rosgenrr respository](https://github.com/GIS4DEV/rosgenrr)
  1. Sinuosity
  1. Longitudinal Profiles
  1. Grains and the Basics of Fluvial Sediment Tranport
  1. Channel Form
  1. Ratios in Fluvial Geomorphology


## Zach's Draft Write-up Guidelines

- Finalize the Rosgen Stream Classification for your data point(s)
- Follow the tutorial on publishing the work to GitHub, ultimately including:
- A table that reports the parameters you input into the model
- Thorough documentation for processing a Rosgen Stream Classification
- A GitHub page detailing
  - Purpose of the classification
  - Data sources and references, including appropriate links
  - Reproducible documentation of methods, where documentation includes:
  - Annotated flowchart of final parameter values (use last page of RSC_EPA_2005 PDF)
  - Images of the longitudinal profile plot with the three different attempts, the close up plot where you found the flood-prone width, and a map of your point.
  - Response to the following prompt: Quantifying uncertainty in geomorphic systems and in GIScience is of paramount importance, not only for creating error bars on a graph, but for realistically communicating the reliability and legitimacy of an output dataset. Error bars do not (necessarily) reflect on the researcher. They stem from collection constraints, processing constraints, subjective decision making, and many, many more sources. Given what you have learned in this module, discuss three sources of uncertainty that could impact the classification of your stream. Where does it stem from? Why is it a problem? What could be done to fix it or reduce it? In a perfect world, how could this uncertainty be removed?


- Sinuosity: `channel length` / `valley length`
- Longitudinal Profiles: 