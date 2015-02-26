#!/bin/sh

#Shell script that sends a Raspberry Pi's IP address to a specified server
#regex for IP address from: http://www.cyberciti.biz/faq/grep-regular-expressions/
#Written by Jason S. Zhao on Feb 23, 2015

IP="Timeout..."
I=1000

while [$IP = "" -a $I -lt 180000]
do
	sleep $I
	$I=$I*1.05
	$IP=`ifconfig | sed -e '/wlan0/,/inet/!d'`
done

echo '$IP' > 'ip.txt'
ftp jszhao@50.63.197.139
sleep 1000
echo "PASS"
#curl jszhao @IP:DIR < IP.txt
