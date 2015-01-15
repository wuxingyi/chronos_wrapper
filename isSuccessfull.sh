./getJobDetails.sh $1 > result.txt
str=`cat result.txt | grep "lastSuccess" | awk -F \": '{print $2}'`
if [ "$str" = ' "", ' ];then
    echo notsuccessful
else
    echo successful
fi
