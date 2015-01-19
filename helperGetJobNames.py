#!/usr/bin/python
import sys
import json


f=file(sys.argv[1])
s=json.load(f)
f.close()


names=[]
for i in range(0,len(s)):
    names.append(s[i][u'name'])

f = open('Names.txt','w')
for item in names:
    f.write('%s\n' % item)
