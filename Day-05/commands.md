# Day 05 — NGINX Commands Reference

## NGINX Status & Installation
sudo systemctl status nginx --no-pager
sudo apt update -y
sudo apt install nginx -y
sudo systemctl enable --now nginx

---

## NGINX Configuration Exploration
nginx -t
ls /etc/nginx
ls /etc/nginx/sites-available
ls /etc/nginx/sites-enabled

Edit default site:
sudo nano /etc/nginx/sites-available/default

---

## Validate & Apply Configuration
sudo nginx -t
sudo systemctl reload nginx

---

## Verification
curl -I http://localhost | head -20

---

## Logs
cd /var/log/nginx
ls
sudo tail -20 access.log
sudo tail -20 error.log

Generate traffic:
curl -s http://localhost >/dev/null

Check new log entries:
sudo tail -10 access.log
