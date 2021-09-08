---
layout: lesson
title: Gravity Model in QGIS
purpose: "review the gravity model of spatial interaction and automate it in QGIS graphic modeler"
---

Do you remember the gravity model of spatial interaction from *human geography with GIS*? If not, you may review the model here:

- [Concept Handout](/assets/gravity_model.pdf)
- [Concept Video](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=20d7f901-2934-4e46-83d7-aba401081120)
- [Worked Example Video](https://midd.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=2cb54be6-c56c-486f-a3ea-aba4010a2520)
- [Sample Data](https://geography.middlebury.edu/jholler/data/k_healthgeog.zip)

## Afternoon Lecture

Reminder: it's best if we keep all of our technical questions in one place: [issues](https://github.com/GIS4DEV/GIS4DEV.github.io/issues) There are already some useful questions! I recieve an email notificaton when a new question is posted, and you can as well if you watch the respository: ![watch repository](/assets/watch.png)
- Discuss the purpose / benefit of creating models
- Sketch up what the GUI (graphical user interface) for a gravity model should look like
- You already have practice thinking programmatically about GIS problems by drawing workflow diagrams!

## Lab

Our first iteration of the gravity model should be able to create service regions composed of input features. Input features are assigned to the service region of the target feature for which they have the greatest potential interaction. The user should be able to customize how many (*k*) target features to consider for each input feature, as well as the coefficients for input weights, target weights, and the friction of distance.

- Honor code: please do not share this tool or workflow with current geog0120 students (but you can tell them to take **geog 323** if they want to make one!)
- Workflow diagram [(link for current students logged in to GitHub only)](https://github.com/GIS4DEV/literature/raw/c7330ccc651b502e1794ed98434fe773865fd113/gravity_model_workflow.png)
- [Tutorial Videos](https://midd.hosted.panopto.com/Panopto/Pages/Sessions/List.aspx?folderID=324cb720-6901-48e2-b57a-acdf014ab826)
- You are encouraged to work collaboratively, although each person should complete their own model and analysis.
- To facilitate collaboration remotely, I opened a [team discussion](https://github.com/orgs/GIS4DEV/teams/spring2021/discussions/1) and we'll have the Zoom meeting open during lab hours
- To clarify expectations for analysis regarding the challenges below, please [see this issue](https://github.com/GIS4DEV/GIS4DEV.github.io/issues/14#issuecomment-790669309)
- If you need the `Group By` tool you're used to, please [see this issue](https://github.com/GIS4DEV/GIS4DEV.github.io/issues/15)

### Gravity model specification

The gravity model of spatial interaction model should be able to take the following inputs (based on class discusson):
- Input Layer/Features
- Input ID
- Input Weight Field
- Target Layer/Features
- Target ID
- Target Weight Field

And create the following output:
- **Spatial Interaction Catchments**: Polygon layer containing the following fields:
  1. TargetID
  2. Target Weight (in this case, it's beds)
  3. Sum of Input Weight (in this case, it's population)
  
Additional *advanced* options for the model should include:
- Use only the nearest `k` features with a default value of `20`
- Distance parameter (`beta` or `friction`) with a default value of `2`
- Input weight parameter (`lambda`, or `emissivity`) with a default value of `1`
- Target weight parameter (`alpha`, or `attractiveness`) with a default value of `1`
  - The previous three parameters allow full implementation of the gravity model formula: `(inputWeight)^λ * (targetWeight)^α / (distance)^β` as described in Rodrigue's [*The Geography of Transport Systems*](https://transportgeography.org/contents/methods/spatial-interactions-gravity-model/)

### Gravity model challenges

- variable names `@VariableNames` are case sensitive `@variablenames`
- it may be wiser to concatenate strings with the `||` operator, rather than `+` operator
- Remember to convert `meters` to `kilometers`
- Don't allow for inputs with weights of `0`
- Don't allow for edge case of a distance of `0` in case a town centroid is directly coincident with a hospital. Perhaps this could be achieved by making the minimum distance `1`? This avoids possible "divide by zero" errors-- always a concern with denominators.
- Allow any type of geometry to be used as the target layer
- Allow the user to use *selected features only* for either the `input features` or the `target features`
- Force the algorithm to always use geodesic distance measurements

### Model for preprocessing Homeland Security hospital data

To be fully reproducible, these steps of data preprocessing should be encoded in a model:
  - Exclude hospitals that do not have a normal intensive care unit for public use (e.g. psychiatric or military hospitals)
  - Exclude hospitals with missing data on the number of beds
  - Exclude hospitals that are closed

### Model to preprocess target features

In many cases, `target features` may need to be aggregated, and it will most often make sense to aggregate them by the same spatial units used for the `input features`. In this particular case, it's the problem of grouping clusters of hospitals by town.

The model should be able to take the following inputs:
- Input Polygon Features
- Target Features

And create an output in which target features have been grouped by the input polygon feature in which they are found, and the group has:
- geometry of just one point at its center
- unique id from the Target Features
- sum of the weight field. 

### Data sources

- I have seperately compiled population by town in New England and Middle Atlantic states using [TidyCensus](https://walker-data.com/tidycensus/) in R based on the American Community Survey 2018 5-year Average. The file is in the geopackage format here: [netown.gpkg](/assets/netown.gpkg)
- Hospital Data: [Homeland Security](https://hifld-geoplatform.opendata.arcgis.com/datasets/6ac5e325468c4cb9b905f1728d6fbf0f_0)
  - download directly, or look at the data source: [services1.arcgis.com](https://services1.arcgis.com/Hp6G80Pky0om7QvQ/arcgis/rest/services/Hospitals_1/FeatureServer/0) 
  - ultimately the server link is: https://services1.arcgis.com/Hp6G80Pky0om7QvQ/ArcGIS/rest/services/Hospitals_1/FeatureServer 
  - and this can be added directly to QGIS!
- Dartmouth Atlas of Health Care [boundary files](https://atlasdata.dartmouth.edu/downloads/supplemental#boundaries)
  - be sure to follow their [terms of use](https://atlasdata.dartmouth.edu/terms_of_use)
  - use the hospital service area boundaries (HSA), not the larger referral regions (HRR)
