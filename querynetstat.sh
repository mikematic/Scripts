#!/usr/bin/sh
 
while [ true ]
listIPs=$(netstat -an|grep "SYN" |awk '{print $5}')
do
timestamp=$(date)
if [[ -z "$listIPs" ]]; then
        #echo "listIPs is null"
        blahblah="Variable not to leave if block empty"
else
        echo "Query at $timestamp"
        for ip in $listIPs
        do
                echo $ip
        done
fi
sleep 1
done
