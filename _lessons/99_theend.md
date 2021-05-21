---
layout: lesson
title: The End
---

## Congratulations!

This is the end of the lesson deck!

Final revisions are due at any time on **May 25**, together with a [short reflection](https://forms.gle/fBYadzPPsbwBbFss7) on peer-to-peer learning and collaboration

## Final Revision Suggestions

I prefer to evaluate your repository and course participation comprehensively. However, if any elements of the repository are substantially incomplete, I will fall back on this rubric (based on the syllabus while removing the final project):
- Six GIS Analyses: 13% each with 2% freebie = 80% GIS Analyses
- Six Reflections/Blogs: 2.5% each + 5% class/lab/GitHub participation = 20% Participation

Citation of Peers:
- We agreed that we would cite peers when their efforts contribute to our success, but I don’t see very much of that at all… It’s natural in this course to learn from & lean on peers, but in doing so it’s also necessary to give them credit.
Linking to Course Content:
- I expect that gis4dev.github.io will be around for a while, but specific locations of files & pages will change semester to semester. Redirect links to content you control in your own repositories, or to the main gis4dev page.

Overall Tone / Language:
- These are public posts, to be useful in your future job searches. Do not demean yourself or dwell on errors. Be honest about shortcomings in the data, anayses or results, but don't dwell on it. Instead, move on to discuss ways that the research could be improved.
- Remember that the primary motivation for reproduction and replication studies is not punitive. Frame your discussions in the constructive motivation for improving scientific knowledge through peer review and open science. It's actually a novel priviledge to have direct access to other researchers' data and code! Project like CyberGISX generally, and the Kang et al 2020 publication specifically, are *very new* in geography, and our engagement with them should be both *encouraging* and *constructive* while emphasizing the *value of open science*. 

Site Templates:
- It's never too late to change the whole style if you feel constrained by your early decision on this!
- Wide format: Hacker, Primer, Cayman, Dinky
- Medium format: Architect, Tactile, Time Machine, Modernist, Midnight, Slate
- Narrow format: Merlot, Leap Day, Minimal
- Do tables just not work in some of these template styles?

Gravity Model:
- Report parameters used for the gravity model of spatial interaction to produce your final results.
- Include language from Dartmouth Atlas terms of use: https://data.dartmouthatlas.org/terms-of-use/ 
- Leaftlet maps are great, but leave your blog posts without any data visuals. One option is to just screen shot some of your leaflet map to use as a thumbnail to link to the map.

Rosgen:
- Report more relevant metadata on data sources for Rosgen, e.g. spatial and temporal resolution.
- What’s the deal with tables not rendering in some themes?
- If you only use the Rosgen and Kasprak papers, then remove the reference section from the end.
- The idea in the flood-prone width graph was to zoom the map in to the section of the river with 2x bankfull depth – most reports could have limited the graph to a smaller portion of the river cross section for more detail. 
- I really appreciated reports that linked to specific techniques/methods/data sources within the repository, rather than one link to the whole repository. 
- If you export the GRASS data with shading burned into elevation already, it will be difficult to visualize that in QGIS. You’re better off exporting the map from GRASS directly, or exporting the elevation, hillshade, and slope maps separately for mapmaking in QGIS. Here’s a tip for making this look as great in QGIS as in GRASS: Put the color layer (slope or elevation) on the bottom and the hillshade on the top with 100% opacity, but change the color rendering of the hill shade “Blending” mode to Multiply.

Dar es Salaam:
- Remember in your interpretation of results that OpenStreetMap is *volunteered geographic information* in which quantity and quality of edits varies over space and time and for which concepts related to error are always an issue, including: completeness, location accuracy,  attribute accuracy, and internal consistency, and semantic heterogeneity.
- Adequately cite the OpenStreetMap and Resilience Analysis data sources, specifying which source provided which data layers.
- The OpenStreetMap data provided for you in PostGIS was imported using the OSM2PGSQL program.
- Don't forget to reference the souce of traditional authorities geographic data in your data section!