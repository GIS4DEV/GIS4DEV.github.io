# Introduction to Python Programming Code from Becky Vandewalle and Dandong Yin
# Available at https://cybergisxhub.cigi.illinois.edu/notebooks/

3 + 4

2 * 4

2 ** 4

10 / 3

10.0 / 3

10 % 3

250 / (5 + 5) * (7 - 3)

2 + 3
4 + 6

print(2 + 3)
4 + 6

import math
math.sqrt(16)

# this is a comment
4 + 2 # this is another comment

a = 1
b = 4
print(a)
b

One = 1
one = 1.0
print(One) # these are different
print(one) # let's use lower case variable names, consistent with PostGreSQL

# indentation matters! use tabs to indent. Spaces are messy.
# code blocks for conditionals, loops, or functions are indented
a = 2
if a:
    print('a exists')
b = 3
if b:
    print('b exists')
if a:
    if b:
        print('a and b exist')

print(type(1))
print(type(1.0))
type('hello')

a = True
b = False
print(a is False)
print(b is True)
print(b is False)

a = 3
if a:
    print('a')

b = 0
if b:
    print ('b')

# a new line \n is a common escape character
new_line_str = 'hi\nhi2'
print (new_line_str)

# lists are created using square brackets
mylist = [1, 2, 3]
mylist

mylist.append(4)
mylist

# tuples are created using parentheses
mytuple = (1, 2, 3)
mytuple

newtuple = (mytuple, 4)
newtuple

print (mylist[2])
print (mytuple[0])

print (mylist[:])

print (mytuple[-1])

# multi-level index
nested_list = [[1, 2], [3, 4]]
nested_list[0][1] # select first list, then second item

# dictionaries are created using curly braces
pet_list = {'alice':'cat', 'becky':'cat', 'chaoli': 'parrot', 'dan':'dog'}
pet_list

pet_list.keys()

pet_list.values()

pet_list['dan']

pet_list['ewan'] = 'bunny'
pet_list

if 'alice' in pet_list.keys():
    del pet_list['alice']
pet_list

# nested dictionaries
pet_list_ext = {'alice': {'type':'cat', 'age':3},
            'becky': {'type':'cat', 'age':9},
            'chaoli': {'type':'parrot', 'age':23},
            'dan': {'type':'dog', 'age':7.5}}
pet_list

pet_list_ext['chaoli']['type']


True and True

True and False

False and False

True or True

True or False

not True

not False

if (1 and 'hi'):
    print('OK')

if (0 and 'hi'):
    print('OK')

1 > 2

1 < 2

1 >= 2

1 <= 2

1 == 1

1 != 2

1 is 2

1 is not 2

1 in (1, 2, 3)

1 not in (1, 2, 3)

import time                        # import entire library
import numpy as np                 # call numpy using np
from math import sqrt              # just import square root function from math library
from math import factorial as fac  # just import factorial function from math library, call it fac

print(time.time())

np.array([2,3,4])

sqrt(16)

fac(5)

a = 3
if a:
    print ('a =', a)

mylist = [1, 2, 3]
for i in mylist:
    print (i, end=" ")

range(5)

for i in range(5):
    print (i, end=" ")


for i in range(10):
    if i == 7:
        break
    print (i, end=" ")


for i in range(10):
    if i == 12:
        break
    print (i, end=" ")
else:
    print ('- no break')


a = 0
while a < 10:
    print (a, end=" ")
    a += 1


try:
    1 / 0
except ZeroDivisionError:
    print("that didn't work")
finally:
    print('end')


try:
    1 / 1
except ZeroDivisionError:
    print ("that didn't work")
finally:
    print ('end')


try:
    1 / 0
except:
    print ("that didn't work")
finally:
    print ('end')


mylist = []
for i in range(5):
    mylist.append(i * 2)
mylist

mylist = [i*2 for i in range(5)]
mylist

def myfunct():
    print ('hello')
myfunct()

def myfunct2(name):
    print ('hello,', name)
myfunct2('Iekika')

myfunct

myfunct2

chicago_tif = rasterio.open(os.path.join('pyintro_resources/data','Chicago.tif'))

type(chicago_tif)

chicago_tif.shape

band1 = chicago_tif.read(1)

chicago = json.load(open(os.path.join('pyintro_resources/data','Chicago_Community.geojson')))

type(chicago)

chicago.keys()

chicago['type']

type(chicago['features'])

chicago['features'][0].keys()

chicago['features'][0]['properties']

get_ipython().run_line_magic('matplotlib', 'inline')
import matplotlib.pyplot as plt

fig = plt.figure(figsize=(12,10))
plt.imshow(band1, cmap='gray', extent=chicago_tif.bounds)

plt.plot([1,2,3,4])
plt.title('My Plot')
plt.ylabel('some numbers')
plt.show()
