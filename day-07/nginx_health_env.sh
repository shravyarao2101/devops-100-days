#!/bin/bash

# Fail if required env vars are missing
: "${NGINX_PORT:?Missing NGINX_PORT}"
: "${ACCESS_LOG:?Missing ACCESS_LOG}"
: "${LOG_DIR:?Missing LOG_DIR}"
: "${ENV_NAME:?Missing ENV_NAME}"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$LOG_DIR/health_${ENV_NAME}_$TIMESTAMP.log"

mkdir -p "$LOG_DIR"

echo "NGINX Health Check [$ENV_NAME] — $TIMESTAMP" >> "$LOG_FILE"
echo "------------------------------------------" >> "$LOG_FILE"

echo "[Service Status]" >> "$LOG_FILE"
systemctl is-active nginx >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "[Port Check]" >> "$LOG_FILE"
ss -tuln | grep ":$NGINX_PORT" >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "[Last 5 Access Logs]" >> "$LOG_FILE"
tail -5 "$ACCESS_LOG" >> "$LOG_FILE" 2>&1

echo "" >> "$LOG_FILE"
echo "Check completed." >> "$LOG_FILE"
