#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing Nginx..."
sudo apt install nginx -y

echo "Installing MySQL..."
sudo apt install mysql-server -y

echo "Installing PHP..."
sudo apt install php-fpm php-mysql -y

echo "Allowing firewall rules..."
sudo ufw allow OpenSSH
sudo ufw allow 'Nginx Full'
sudo ufw --force enable

echo "Starting Nginx..."
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Setup complete!"
