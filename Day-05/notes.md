# Day 05 — NGINX Configuration & Log Fundamentals

## Objective
Understand where NGINX configuration lives, how to safely apply configuration changes, and how to inspect logs for real operational debugging on an EC2 instance.

---

## What I Did
- Verified NGINX installation and service status on an Ubuntu EC2 instance
- Explored NGINX configuration structure under `/etc/nginx`
- Made a safe configuration change by adding a custom HTTP response header
- Validated configuration changes using `nginx -t`
- Reloaded NGINX without downtime using `systemctl reload`
- Verified changes using `curl`
- Analyzed access and error logs under `/var/log/nginx`

---

## Key Learnings

### NGINX Configuration
- Main config file: `/etc/nginx/nginx.conf`
- Site-specific configs:
  - `/etc/nginx/sites-available/`
  - `/etc/nginx/sites-enabled/`
- Active configs are symlinked from `sites-enabled`

### Safe Config Changes
- `nginx -t` validates syntax before applying changes
- Prevents broken deployments caused by invalid configs
- Always validate **before** reload or restart

### Reload vs Restart
- `reload` → applies new config without dropping active connections
- `restart` → stops and starts NGINX (can cause downtime)

### Logs (Critical for Ops)
- `access.log` → records incoming requests (IP, path, status codes)
- `error.log` → records config errors and runtime failures
- Logs are the first place to check when something breaks

---

## Outcome
Successfully updated NGINX configuration, validated it safely, and confirmed both service health and logging behavior in a production-like environment.
