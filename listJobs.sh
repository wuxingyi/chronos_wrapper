echo we want to list jobs through $1
curl -X GET -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -H "Content-Type: application/json" http://10.180.92.$1:9999/scheduler/jobs | python -m json.tool 
