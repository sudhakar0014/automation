import os
import json
get_data="wget https://api.covid19india.org/v4/min/data.min.json"
os.system(get_data)
f=open("data.min.json","r")
f=json.load(f)
p=json.dumps(f)
print  ("State             Active cases")
print  ("------------------------------")
for key in json.loads(p):
    others=0
    active=int(f[key]['delta7']['confirmed'])-int(f[key]['delta7']['recovered'])
    try:
        others=int(f[key]['delta7']['others'])
    except:
        others=0
    try:
        deceased=int(f[key]['delta7']['deceased'])
    except:
        deceased=0
    active=active-others-deceased
    print (str(key) + "                 "+  str(active))
