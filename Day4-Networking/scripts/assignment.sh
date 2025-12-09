#!/bin/bash

echo "====PROCESS USING PORT 8080===="
sudo lsof -i 8080

echo "===EC2 INSTANCE REACH FOR GITHUB ON PORT 443==="
curl -I https://github.com

echo "====Capture traffic for 10 seconds and save it===="
sudo timeout 10 tcpdump -i eth0 -w capture.pcap

echo "===Check open port and print status==="
HOST='localhost'
PORT=22

#check if port is open
nc -z -w3 $HOST $PORT >/dev/null 2>&1

if [ $? -eq 0 ]; then
        echo "SSH is UP on $HOST:$PORT"
else
        echo "SSH DOWN"

fi
