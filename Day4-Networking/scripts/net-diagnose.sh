#!/bin/bash

echo "===SYSTEM IP==="
ip a | grep "inet"


echo "==DEFAULT ROUTE=="
ip route

echo "===OPEN PORTS==="
ss -tulpn

echo "====INTERNET CONNECTIVITY==="
ping -c 2 google.com
