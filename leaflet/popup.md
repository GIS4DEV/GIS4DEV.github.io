---
layout: page
title: How to edit Leaflet popups
---

The QGIS2WEB plugin automatically creates plain Jane popups with all of the attributes of your layer(s) and no labels. The popup is created in the `bindPopup()` function, which first creates a popupContent text string with some code for the popup's content.

The content itself is a table with a series of rows, including one row for each attribute. The beginning of a row is flagged by a `<tr>` tag and ended by a `</tr>` tag. The beginning of a row cell is flagged by a `<td>` tag and ended by a `</td>` tag.

```js
function pop_SubwardsbyPercentBuildingsFlooded_1(feature, layer) {
 var popupContent = '<table>\
   <tr>\
     <td colspan="2">' + (feature.properties['fid'] !== null ? Autolinker.link(String(feature.properties['fid'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + (feature.properties['subward'] !== null ? Autolinker.link(String(feature.properties['subward'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + (feature.properties['floods'] !== null ? Autolinker.link(String(feature.properties['floods'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + (feature.properties['buildcnt'] !== null ? Autolinker.link(String(feature.properties['buildcnt'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + (feature.properties['pctflood'] !== null ? Autolinker.link(String(feature.properties['pctflood'])) : '') + '</td>\
   </tr>\
   </table>';
layer.bindPopup(popupContent, {maxHeight: 400});
}
```

To remove rows, delete everything from the beginning `<tr>` tag to the ending `</tr>` tag.
To add a label, insert text before the `feature.properties()` function calling for the attribute content by adding it with `+` operators.
In the example below, I've removed the FID from the popup content and inserted a label for pctflood:

```js
function pop_SubwardsbyPercentBuildingsFlooded_1(feature, layer) {
 var popupContent = '<table>\
  
   <tr>\
     <td colspan="2">' + (feature.properties['subward'] !== null ? Autolinker.link(String(feature.properties['subward'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + (feature.properties['floods'] !== null ? Autolinker.link(String(feature.properties['floods'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + (feature.properties['buildcnt'] !== null ? Autolinker.link(String(feature.properties['buildcnt'])) : '') + '</td>\
   </tr>\
   <tr>\
     <td colspan="2">' + 'Percent of buildings flooded: ' + (feature.properties['pctflood'] !== null ? Autolinker.link(String(feature.properties['pctflood'])) : '') + '</td>\
   </tr>\
   </table>';
layer.bindPopup(popupContent, {maxHeight: 400});
}
```
