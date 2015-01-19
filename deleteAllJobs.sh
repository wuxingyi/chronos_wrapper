
curl -X GET -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -H "Content-Type: application/json" http://10.180.92.57:9999/scheduler/jobs > test.json

#./jobinfo.py test.json 57 | python -m json.tool
./helperGetJobNames.py test.json > Names.txt


while read LINE
do
   curl -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -L -X DELETE http://10.180.92.57:9999/scheduler/job/$LINE
done < Names.txt
#cat hahaha.json | python -m json.tool
rm test.json Names.txt -rf
