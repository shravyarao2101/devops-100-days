# Day 07 — Commands

## Environment variables
printenv
export ENV_NAME=dev
export NGINX_PORT=80
export ACCESS_LOG=/var/log/nginx/access.log
export LOG_DIR=/home/ubuntu/nginx-health
unset ENV_NAME

## Script execution
chmod +x nginx_health_env.sh
./nginx_health_env.sh

## Verification
ls /home/ubuntu/nginx-health
