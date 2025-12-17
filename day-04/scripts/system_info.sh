#!/bin/bash

echo "System informantion Report"
echo "__________________________"
echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo "Uptime:"
uptime
echo "Disk Usage:"
df -h | head -5
