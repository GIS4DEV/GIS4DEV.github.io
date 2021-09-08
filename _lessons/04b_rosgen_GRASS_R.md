---
layout: lesson
title: Rosgen Classification in GRASS/R
purpose: "replicate stream classification methods in GIS using GRASS and open science protocols"
---

## Introduction

The Rosgen Stream classification is a method for interpreting stream and river system processes and classifying them based on the form or morphology of the stream/river at a particular moment in time. GIS is increasingly used to aid these classifications, but it's application has not been standardized. Moreover, the classifications are widely used in the fields of environmental management, impact assessment, and ecosystem restoration. Therefore, we will attempt to create and practice a replicable technique for appling high-resolution terrain models to classify sections of streams and rivers (what geomorphologists call "reaches").

### Main Questions for this Topic
  - How do geomorphologists use spatial analysis to classify river and stream systems?
  - How can we implement the spatial analysis for stream classification using geographic information systems?
  - Can we demonstrate the use of a research compendia in the setting of an undergraduate methods course? 
  - To what degree might data errors and uncertainty in analytical techniques create uncertainty and problems of reproducibility in research involving stream classification?

### Software
  - [GRASS](https://grass.osgeo.org/) (installs automatically with QGIS)
  - [RStudio Desktop](https://rstudio.com/) (popular free software for using the open source [R Project of Statistical Computing](https://www.r-project.org/) programming language)
  
### Hardware
  - The data files in this lab are several gigabytes: if your internal hard drive is small, you'll want an external hard drive.
  - The evening lab space supports plenty of power adapters and ample desktop space for mice and keyboards.
  
### Instructions

In this lab, we will experiment with learning from a research repository. Therefore, most of the data and instructions are included in the repository as if Zach and coauthors were working on a research publication. Data, or instructions for downloading it, are included in the `data` folder, and information about that data is included in `metadata`. 

The RE-rogsgen repository has been finalized! Feel free to fork the repository now.

1. Optionally, there are [three videos available](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=cb556be3-59df-48ee-ac93-acee00db11b2) to orient you to the GitHub repository, to GRASS, and to RStudio.
1. Start by using the GitHub website to *fork* the [RE-rosgen respository](https://github.com/GIS4DEV/RE-rosgen) from the GIS4DEV organization to your own GitHub account.
1. Then use GitHub Desktop to *clone* your version of the repository to a location with *plenty of storage capacity* as this project uses some very large GIS datasets.
1. Some files are too large for GitHub versioning and servers to handle. We'll treat these as `private` data sources, so that GitHub does not try to control or sync them. 
1. Please download [https://geography.middlebury.edu/jholler/data/rosgenrr/JohnDayWShed.zip](https://geography.middlebury.edu/jholler/data/rosgenrr/JohnDayWShed.zip) to your `RE-rosgen/data/raw/private` folder and unzip their contents in the same `RE-rosgen/data/raw/private` folder.
1. As you plan for and complete the replication, complete the replication report template found in `docs/report/HEGSRR-Replication-Report.md`. Eventually, you'll copy the report for inclusion in your GitHub Pages.
2. Use the `loc_id` enumerated in the Reach Assignments table below when choosing the CHaMPS site to analyze-- your site of interest.
3. Follow the procedures enumerated in the repository's `procedure` folder, going in the same order as the procedures listed in `procedure_metadata.csv`. The procedures work through the process of creating variables required for a Rosgen Level II Stream Classification, illustrated by the Environmental Protection Agency's flowchart: ![Rosgen Level II Procedure](/assets/rosgen_level2.jpg) The full EPA training from which this chart was downloaded is available [here](https://cfpub.epa.gov/watertrain/moduleframe.cfm?parent_object_id=1189) and the chart is [section 25 of 25](https://cfpub.epa.gov/watertrain/moduleFrame.cfm?parent_object_id=1275)
4. You may definitely make use of the GRASS models included in the repository, but you have a responsibility to check the models against instructions to verify their correctness, and there may be aspects of uncertainty or error propagation you need to understand in the model workflows. Additionally, the models are not well documented for reproducibility yet, which will be important for your reporting of your methods. You may want to make an additional model or two for other steps that look like they can be automated.
5. As a final step, you should update the data_metadata.csv file to report any new data files you have created and the procedure_metadata.csv file to report any new procedural files (code or protocols) you have created.

### Reach Assignments

| GitHub Name | loc_id |
| :--: | :--: |
| alandaux | 16 |
| avillanueva1005 | 20 |
| brookelaird | 22 |
| daptx | 3 |
| emmab725 | 6 |
| emmaclinton | 7 |
| evankilli | 4 |
| gsmarshall | 17 |
| hrigdon98 | 9 |
| jackson-mumper | 21 |
| jafreedman12 | 13 |
| majacannavo | 12 |
| mtango99 | 18 |
| nicknonnen | 25 |
| sanjana-roy | 10 |
| stevenmontilla | 8 |
| vinfalardeau | 11 |

### GRASS

<iframe width="560" height="315" src="https://www.youtube.com/embed/cZia3ShzTWM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Job Posting

[Boston Region Metropolitan Planning Organization is seeking a Data Strategist](https://nam10.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.governmentjobs.com%2Fcareers%2Fctps%2Fjobs%2F3015230%2Fdata-strategist%3Fpagetype%3DjobOpportunitiesJobs&data=04%7C01%7Cnearc-l%40listserv.uconn.edu%7C342dbaf5d7cb43fc8bd308d8e893e64c%7C17f1a87e2a254eaab9df9d439034b080%7C0%7C0%7C637515069201638322%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&sdata=UZeUtyDTAXfAXUxt17Y3fS2WGDW1NbXtU8Jkty84xCI%3D&reserved=0)
