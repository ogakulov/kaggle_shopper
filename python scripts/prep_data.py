# -*- coding: utf-8 -*-
"""
Spyder Editor

This temporary script file is located here:
/Users/Leah/.spyder2/.temp.py
"""

import pandas as pd


#file paths
path = "/Users/Leah/Documents/kaggle/data/"
trainhist = "trainHistory.csv"
category = "category.csv"
company = "company.csv"

train = pd.DataFrame(pd.read_csv(filepath_or_buffer= path+trainhist, parse_dates=[6]))

train.head()
train.dtypes
train.describe()


cat = pd.DataFrame(pd.read_csv(filepath_or_buffer= path+category, parse_dates=[6]))



cat.head()
cat.dtypes
cat.describe()

comp = pd.DataFrame(pd.read_csv(filepath_or_buffer= path+company, parse_dates=[6]))
comp.head()
comp.dtypes
comp.describe()

comp2 = comp.copy()
comp2.dtypes
trans = cat.append(comp2, ignore_index=True)

#check number of rows before removing duplicates
len(trans)
len(comp) + len(cat)

#drop duplicate rows
trans2 = trans.drop_duplicates()

#check the new length
len(trans2)

trans2.head()
trans2.tail()
trans2.describe()
trans2.shape


#split apply combine on id to create features
gbid = trans2.groupby('id')
gbid.count()