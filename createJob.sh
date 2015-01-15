str="{\"name\": "\"$1\"", \"command\": \"env\", \"epsilon\": \"PT300S\", \"owner\": \"wuxingyi@letv.com\", \"async\": false, \"cpus\": 4, \"disk\": 256, \"mem\": 512, \"highPriority\": true, \"runAsUser\": \"root\", \"schedule\": \"R1/2015-01-14T17:47:00+08:00/PT60S\"}" 


curl -X POST -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -H "Content-Type: application/json" -d "${str}" http://10.180.92.57:9999/scheduler/iso8601


