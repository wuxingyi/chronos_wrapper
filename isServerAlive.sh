a=`curl -I 10.180.92.$1:9999  | grep "200 OK" | wc -l `
if [[ $a -eq 1 ]];then
    echo "yes"
else
    echo "no"
    exit -1
fi
