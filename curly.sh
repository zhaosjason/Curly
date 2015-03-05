#!/bin/sh

#Bash script that sends a Raspberry Pi's IP address to a specified server
#Written by Jason S. Zhao on Feb 23, 2015

IP=""
I=0.25

#Fix comparison of fp nums
while [ "$IP" == "" -a `echo $I"<"5000 | bc -l` ]
do
	sleep $I
	echo $I
	I=$(expr $I*1.05 | bc)
	IP=`ifconfig | sed -e '/wlandsf0/,/inet/!d'`
done

#Store the IP in ip.txt and scp it to the specified server
#Security is handled with a public ssh key
#TODO: Setup SSH-KEY

if [ "$IP" == "" ]
then
	echo Timeout...
else
	echo $IP > "ip.txt"
	scp ip.txt zhao473@data.cs.purdue.edu:~/
fi
echo "Done!"
