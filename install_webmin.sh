#!/bin/bash

# Step 1: Update package index
echo "Updating package index..."
sudo apt update

# Step 2: Install necessary dependencies
echo "Installing dependencies..."
sudo apt install -y software-properties-common apt-transport-https wget

# Step 3: Add the Webmin repository and GPG key
echo "Adding Webmin repository and importing GPG key..."
wget -q -O- https://download.webmin.com/jcameron-key.asc | sudo apt-key add -
sudo add-apt-repository "deb http://download.webmin.com/download/repository sarge contrib"

# Step 4: Update package list and install Webmin
echo "Updating package list and installing Webmin..."
sudo apt update
sudo apt install -y webmin

# Completion message
echo "Webmin installation completed. Access Webmin at https://your_server_ip:10000"
echo "Log in with root or a sudo user."

# End of script

