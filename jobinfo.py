#!/usr/bin/python
import sys
import json


f=file(sys.argv[1])
s=json.load(f)
f.close()

hasJob=False
for i in range(0,len(s)-1):
    if (s[i][u'name'] == sys.argv[2]):
        hasJob=True
        break
        
ret=-1
if hasJob == True:
    with open("./jobinfo.json", 'w') as f:
        json.dump(s[i], f)

    ret = 0

exit(ret)


