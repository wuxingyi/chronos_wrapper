./getJobNames.sh > result.txt

hasJob=0
while read line
do
    if [ "$line" = $1 ];then
       hasJob=1
       break
    fi
done < result.txt

if [ $hasJob -eq 0  ];then
    echo "no such job"
    rm -rf result.txt
    exit -1
fi


./getJobDetails.sh $1 > result.txt
str=`cat result.txt | grep "lastSuccess" | awk -F \": '{print $2}'`
if [ "$str" = ' "", ' ];then
    echo notsuccessful
else
    echo successful
fi

rm result.txt -rf
