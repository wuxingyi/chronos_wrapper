str="{\"name\": "\"$1\"", \"command\": \"sleep 10\", \"epsilon\": \"PT30S\", \"owner\": \"wuxingyi@letv.com\", \"cpus\": 0.1, \"disk\": 0, \"mem\": 16, \"highPriority\": false, \"runAsUser\": \"root\", \"parents\": [\"$2\"]}" 


curl -X POST -H "Authorization: Basic cm9vdDpoZWxsb3dvcmxkMTIz" -H "Content-Type: application/json" -d "${str}" http://10.180.92.57:9999/scheduler/dependency


