#Curly
###Description
A small bash script that sends a raspberry pi's IP address to a specified server.  This script is mainly for people who don't have a monitor or keyboard for their RPis but would like to SSH in without having to connect it to an external device.
The script will check for an IP address every x seconds, in which x starts at .25 and increases by a factor of 1.05 between every check.
###Running
```
wget URL

#Get script to run at startup
#Specify a server to send the IP to
#Modify the sed parameters to match your device (mine is set to wlan0)
```
Be sure to run the script at startup.  You will also need to specify a server for the script to send the IP address to in curly.sh and if necessary a password / SSH key.  The script will handle everything else.
