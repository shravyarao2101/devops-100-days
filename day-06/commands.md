# Day 06 — Commands

## Process inspection
ps -ef | grep nginx

## Service control
systemctl status nginx
systemctl start nginx
systemctl stop nginx
systemctl reload nginx
systemctl restart nginx

## Automation
chmod +x nginx_health.sh
./nginx_health.sh

## Cron
crontab -e
crontab -l

## Logs
ls -lt ~/nginx-health
cat ~/nginx-health/health_*.log
