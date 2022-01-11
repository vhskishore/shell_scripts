#!/bin/bash
a=`df -h  | egrep -v "tmpfs|devtmpfs|/dev/loop*" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`
for i in $a
do
if [ $i -ge 10 ]
then
echo " disk is utilization is $i and exceded the threshold...!!!"
fi
done
