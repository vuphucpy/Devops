#!/bin/bash

# Installing Dependencies
echo "#####################################################"
echo "Installing packages."
echo "#####################################################"
sudo yum install wget unzip httpd -y
echo

# Start & Enable Service
echo "#####################################################"
echo "Start & Enable HTTPD Service"
echo "#####################################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo

# Creating Temp Directory
echo "#####################################################"
echo "Starting Artifact Deployment"
echo "#####################################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2136_kool_form_pack.zip
unzip 2136_kool_form_pack.zip
cp -r 2136_kool_form_pack/* /var/www/html/
echo

# Bonuce Service
echo "#####################################################"
echo "Restarting HTTPD Service"
echo "#####################################################"
systemctl restart httpd
echo

# Clean Up
echo "#####################################################"
echo "Removing Temporary Files"
echo "#####################################################"
rm -rf /tmp/webfiles
echo
