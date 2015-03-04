#!/bin/sh

#Shell script that sends a Raspberry Pi's IP address to a specified server
#Written by Jason S. Zhao on Feb 23, 2015

IP="Timeout..."
I=1000

while [$IP == "Timeout..." -a $I -lt 15000]
do
	sleep $I
	$I=$I*1.05
	$IP=`ifconfig | sed -e '/wlan0/,/inet/!d'`
done

#Store the IP in ip.txt and scp it to the specified server
#Security is handled with a public ssh key
#TODO: Setup SSH-KEY
echo $IP > 'ip.txt'
scp ip.txt zhao473@data.cs.purdue.edu:~/

