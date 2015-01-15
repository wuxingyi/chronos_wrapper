
curl -X GET -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -H "Content-Type: application/json" http://10.180.92.57:9999/scheduler/jobs > test.json

#./jobinfo.py test.json $1 | python -m json.tool
./jobinfo.py test.json $1 

if [[ $? == 0 ]];then
    cat jobinfo.json | python -m json.tool 
    rm jobinfo.json
fi


#cat hahaha.json | python -m json.tool
rm test.json -rf
