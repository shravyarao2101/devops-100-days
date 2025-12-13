# Permissions
ls -l
chmod 644 file1.txt
chmod 600 file1.txt
chmod 755 .
stat file1.txt

# Ownership
whoami
id
groups
sudo chown ubuntu:ubuntu file1.txt
sudo chown -R ubuntu:ubuntu .

# Processes
ps aux
ps aux | head
ps -ef
top
htop
ps aux | grep nginx
pgrep nginx

# Services
systemctl list-units --type=service
systemctl status nginx
sudo systemctl restart nginx
sudo systemctl reload nginx
systemctl is-active nginx
systemctl is-enabled nginx

# Logs
journalctl
journalctl -u nginx
journalctl -xe

# Users & Permissions Context
getent passwd
getent group
ls -ld .
umask

