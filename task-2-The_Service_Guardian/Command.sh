#!/bin/bash

# Step A: Create Python script
sudo mkdir -p /opt/app

sudo nano /opt/app/monitor.py 
#!/usr/bin/env python3
import time

while True:
    print("System Healthy")
    time.sleep(15)


sudo chmod +x /opt/app/monitor.py

# Step B: Create systemd service file
sudo nano /etc/systemd/system/healthcheck.service 
[Unit]
Description=Health Check Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /opt/app/monitor.py
Restart=always
User=root

[Install]
WantedBy=multi-user.target

# Step C: Start and verify service
sudo systemctl daemon-reload
sudo systemctl start healthcheck.service
sudo systemctl enable healthcheck.service
sudo systemctl status healthcheck.service

# Step D: Show last 5 logs
sudo journalctl -u healthcheck.service -n 5