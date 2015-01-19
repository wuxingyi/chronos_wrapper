str="{\"name\": "\"$1\"", \"command\": \"sleep 10\", \"epsilon\": \"PT30S\", \"owner\": \"wuxingyi@letv.com\", \"async\": false, \"cpus\": 0.1, \"disk\": 0, \"mem\": 16, \"highPriority\": true, \"runAsUser\": \"root\", \"schedule\": \"R10/2015-01-19T$3:$4:00+08:00/PT120S\"}" 


curl -X POST -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -H "Content-Type: application/json" -d "${str}" http://10.180.92.$2:9999/scheduler/iso8601


