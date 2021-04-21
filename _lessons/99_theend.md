---
layout: lesson
title: The End
---

## Congratulations!

This is the end of the lesson deck!

Final revisions are due at any time on **May 25**.

## Final Revision Suggestions

Citation of Peers:
- We agreed that we would cite peers when their efforts contribute to our success, but I don’t see very much of that at all… It’s natural in this course to learn from & lean on peers, but in doing so it’s also necessary to give them credit.
Linking to Course Content:
- I expect that gis4dev.github.io will be around for a while, but specific locations of files & pages will change semester to semester. Redirect links to content you control in your own repositories, or to the main gis4dev page.

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