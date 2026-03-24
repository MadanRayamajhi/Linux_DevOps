#!/bin/bash

# Step A: Check UFW Status
sudo ufw status verbose

# Step B: Allow SSH and Enable Firewall
sudo ufw allow 22/tcp
sudo ufw --force enable

# Step C: Open Port 8080 for TCP (Web App)
sudo ufw allow 8080/tcp

# Step D: Test connectivity to google.com
curl -I https://www.google.com