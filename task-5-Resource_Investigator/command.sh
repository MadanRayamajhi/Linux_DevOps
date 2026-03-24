#!/bin/bash

Step A: Downloading WordPress ZIP file
wget https://wordpress.org/latest.zip

Step B: Installing unzip package 
sudo apt update -y
sudo apt install unzip -y

Step C: Extracting ZIP file
unzip -o latest.zip

Moving into wordpress directory
cd wordpress || exit

Finding largest files (Top 10)
du -ah . | sort -rh | head -n 10

Step D: Checking RAM usage
free -h

Checking Disk space
df -h

