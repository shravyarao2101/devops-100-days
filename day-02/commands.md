# Day 02 — Commands

## SSH
ssh -i "yourkey.pem" ubuntu@<public-ip>

## NGINX Install
sudo apt update -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx

## Deploy Webpage
cd /var/www/html
sudo rm index.nginx-debian.html
echo "<h1>Hello World. This is Shravya<h1> <h2>My DevOps Day-2 tasks almost done<h2>" | sudo tee index.html
