#!/bin/bash
set -e

# Simple web page
echo "Hello from Auto Scaling EC2 in PRIVATE subnet! $(hostname)" > /tmp/index.html

# Install and start nginx (Amazon Linux 2023)
dnf -y update
dnf -y install nginx
cp /tmp/index.html /usr/share/nginx/html/index.html
systemctl enable nginx
systemctl start nginx