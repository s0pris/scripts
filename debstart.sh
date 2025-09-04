#!/bin/bash
echo 'make sure your on your root user..'
sleep 3
apt install sudo -y
sleep 1
echo 'running command to ensure repo sources are correct and not pulling from cdrom...'
sleep 2
sudo sed -i '/cdrom:/s/^/#/' /etc/apt/sources.list
echo 'updating system..'
sleep 2
sudo apt update
echo 'install curl'
sudo apt install curl
echo 'it'll now ask for your user's name to add sudo perms'
sleep 2
read -p "Enter the username to add to the sudo group: " USERNAME
sudo usermod -aG sudo "$USERNAME"
echo "user '$USERNAME' added to the sudo group"
sleep 2
echo 'done'

