#!/bin/bash

LOG_DIR="$HOME/nginx-health"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$LOG_DIR/health_$TIMESTAMP.log"

mkdir -p "$LOG_DIR"

echo "NGINX Health Check — $TIMESTAMP" >> "$LOG_FILE"
echo "--------------------------------" >> "$LOG_FILE"

echo "[Service Status]" >> "$LOG_FILE"
systemctl is-active nginx >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "[Port 80 Check]" >> "$LOG_FILE"
ss -tuln | grep ':80' >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "[Last 5 Access Logs]" >> "$LOG_FILE"
tail -5 /var/log/nginx/access.log >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "Check completed." >> "$LOG_FILE"
