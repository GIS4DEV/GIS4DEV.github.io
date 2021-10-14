# Geospatial Python Tutorial
# Original by Becky Vandewalle based off of prior work by Dandong Yin
# Available at https://cybergisxhub.cigi.illinois.edu/notebooks/

get_ipython().run_line_magic('matplotlib', 'inline')
import os
import geopandas as gpd
import pandas as pd
import numpy as np
import shapely

towns_temp_gpd = gpd.read_file(os.path.join('./pyintro_resources/data','towns.dbf'))
towns_table = pd.DataFrame(towns_temp_gpd)[:10]

countries = gpd.read_file(os.path.join(r'zip://pyintro_resources/data/ne_10m_admin_0_countries.zip'))
cities = gpd.read_file(os.path.join(r'zip://pyintro_resources/data/ne_10m_populated_places.zip'))
rivers = gpd.read_file(os.path.join(r'zip://pyintro_resources/data/ne_10m_rivers_lake_centerlines.zip'))

type(towns_table)

towns_table.head()

pd.Series([0,1,2], index=['a', 'b', 'c'])

pd.Series({'a' : 0, 'b' : 1, 'c' : 2})

pd.Series(5, index=['a', 'b', 'c'])

pd.Series([5, 5, 5], index=['a'])

pd.Series([0,1,2])

myseries = pd.Series({'a' : 0, 'b' : 1, 'c' : 2})
type(myseries)

list(myseries.values)

list(myseries.index)

myseries[0]

myseries[:2]

myseries.median()

myseries > myseries.median()

any(myseries > myseries.median())

all(myseries > myseries.median())

myseries[myseries > myseries.median()]

myseries

myseries[[2, 1, 1]]

myseries + myseries

myseries ** 3

myseries['a']

myseries['d'] = 5
myseries

'f' in myseries

'c' in myseries

print (myseries.name)

myseries.rename('stock_price')

towns_table.head()

towns_table.tail()

towns_table.index

towns_table.columns

towns_table.values

towns_table.values.shape

print (len(towns_table.values[0]))
print (len(towns_table.columns))

towns_table.values[5]

towns_table.values[5][5]

towns_table.describe()

towns_table.T

towns_table.sort_values(by='POP2010')

myDataFrame = pd.DataFrame(
    {'one' : pd.Series([1., 2., 3.], index=['a', 'b', 'c']),
     'two' : pd.Series([1., 2., 3., 4.], index=['a', 'b', 'c', 'd'])})

myDataFrame

myDataFrame.columns

myDataFrame['three'] = myDataFrame['one'] + myDataFrame['two']
myDataFrame

myDataFrame['flag'] = myDataFrame['one'] > 2
myDataFrame

del myDataFrame['two']
myDataFrame

myDataFrame['four'] = 4
myDataFrame

myDataFrame.append({'one':3,'three':2.0,'flag':False},ignore_index=True)

myDataFrame

myDataFrame2 = myDataFrame.append({'one':3,'three':2.0,'flag':False},ignore_index=True)

myDataFrame2

myDataFrame.drop(['a','c'])

myDataFrame.drop(['one','four'], axis=1)

towns_table['POP2010']

towns_table[0:3]

towns_table.loc[0:2,['POP2010','TOWN']]

towns_table.loc[3,['POP2010','TOWN','POP1990']]

towns_table.loc[3,'POP2010']

towns_table.iloc[3]

towns_table.iloc[3,0:5]

towns_table.iloc[:,0:5]

towns_table.iloc[:2,:2]

towns_table['POP2010']>16000

(towns_table['POP2010']-towns_table['POP1990'])>100

(towns_table['POP2010']>16000) & ((towns_table['POP2010']-towns_table['POP1990'])>100)

(towns_table['POP2010']>16000) | ((towns_table['POP2010']-towns_table['POP1990'])>100)

towns_table[towns_table['POP2010']>16000]


towns_table[towns_table['POP1990']-towns_table['POP1980']<100]

towns_table[((towns_table['POP2010']-towns_table['POP1990'])>100) & (towns_table['POP2010']>16000)]

simp_db = towns_table.loc[:,['TOWN','POP1980','POP1990','POP2000','POP2010']]

simp_db

simp_db.plot();

simp_db.T

simp_db.T.plot()

simp_db2 = simp_db.T.rename(columns=simp_db.T.iloc[0])
simp_db2

simp_db3 = simp_db2.drop(['TOWN'])

simp_db3.plot(figsize=(14,12));

simp_db3.plot(kind='bar',figsize=(14,12));

type(towns_table)

towns_table.head()

towns_gdb = gpd.GeoDataFrame(towns_table, geometry='geometry')

towns_gdb.head()

type(towns_gdb)

towns_gdb.plot();

chicago_gdf = gpd.GeoDataFrame.from_file(os.path.join('./pyintro_resources/data',
                                                      'Chicago_Community.geojson'))

chicago_gdf.plot();

chicago_gdf.plot(column='community', figsize=(14,12));

towns_gdb.plot(column='POP2010', cmap='hot_r', legend=True);

sh_point = shapely.geometry.Point(0, 1)

sh_point

type(sh_point)

sh_line = shapely.geometry.LineString([(0, 0), (1, 1)])

sh_line

type(sh_line)

sh_polygon1 = shapely.geometry.Polygon([(0, 0), (1, 1), (1, 0)])
sh_polygon2 = shapely.geometry.Polygon([(2, 2), (3, 3), (3, 2), (2.75, 2.25)])

sh_polygon1

type(sh_polygon1)

sh_polygons = shapely.geometry.MultiPolygon([sh_polygon1, sh_polygon2])

sh_polygons

type(sh_polygons)

len(sh_polygons)

sh_polygons.wkt

sh_polygons.centroid

sh_polygons.centroid.wkt

sh_polygons.area

sh_polygons.length

sh_polygons.boundary

sh_polygons.bounds

sh_polygons.envelope

sh_polygon3 = shapely.geometry.Polygon([(0, 0), (0, 1), (1, 1), (1, 0)],
                                       [[(0.25, 0.25), (0.75, 0.25), (0.75, 0.75)],
                                       [(0.25, 0.5), (0.25, 0.75), (0.5, 0.75)]])

sh_polygon3

list(sh_polygon3.exterior.coords)

for inter in list(sh_polygon3.interiors):
    print (inter.bounds)

or_geo = towns_gdb.loc[1, 'geometry']
or_geo

or_geo.simplify(50)

or_geo.simplify(500)

belgium = countries.loc[countries['NAME'] == 'Belgium', 'geometry'].unary_union
belgium

paris = cities.loc[cities['NAME'] == 'Paris', 'geometry'].unary_union
paris

brussels = cities.loc[cities['NAME'] == 'Brussels', 'geometry'].unary_union
brussels

city_connect = shapely.geometry.LineString([paris, brussels])

gpd.GeoSeries([belgium, paris, brussels, city_connect]).plot(cmap='tab10');

brussels.within(belgium)

belgium.contains(brussels)

paris.within(belgium)

belgium.contains(paris)

countries[countries.contains(paris)]

amazon = rivers[rivers['name'] == 'Amazonas'].geometry.unary_union
amazon

countries[countries.intersects(amazon)]

countries[countries.intersects(amazon)]['geometry'].append(gpd.GeoSeries(amazon)).plot(cmap='tab10');

danube = rivers[rivers['name'] == 'Danube'].geometry.unary_union
countries[countries.intersects(danube)]['geometry'].append(gpd.GeoSeries(danube),ignore_index=True).plot(cmap='tab10');

amazon

super_amazon = amazon.buffer(10)
super_amazon

brazil = countries[countries['NAME']=='Brazil']['geometry'].unary_union

gpd.GeoSeries([brazil, amazon, super_amazon]).plot(alpha=0.5, cmap='tab10');

super_amazon.intersection(brazil)

super_amazon.union(brazil)

brazil.union(super_amazon)

super_amazon.difference(brazil)

brazil.difference(super_amazon)

countries[countries['CONTINENT'] == 'South America']

countries[countries['CONTINENT'] == 'South America'].unary_union

countries.plot(column='NAME', cmap='tab20c', figsize=(14,14), categorical=True);
