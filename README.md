#Curly
###Description
A small shell script that sends a raspberry pi's IP address to a public webserver.
The script will check for an IP address every x seconds, where x starts at 5 and increases by a factor of 1.05 between every check.
###Running
```
wget URL
```
Place the shell script in the startup folder to run the script at startup.  You will also need to specify a server for the script to send the IP address to in the server.json file.  The script will handle everything else.
