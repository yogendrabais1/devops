#!/bin/bash

echo "==== SYSTEM RESOURCE SUMMARY ======"
echo "Date: $(date)"
echo ""
echo "Top 5 CPU consuming process:"
ps aux --sort=-%cpu | head -6
echo ""
echo "Top 5 memory consuming process:"
ps aux --sort=-%mem | head -6
echo ""
echo "Disk Usage:"
df -h
echo ""
echo "Memory"
free -m
echo ""
echo "Open ports"
ss -tupln | head
