#!/bin/bash

# Step 1: Create Python script
sudo mkdir -p /opt/app

sudo tee /opt/app/monitor.py > /dev/null <<EOF
#!/usr/bin/env python3
import time

while True:
    print("System Healthy")
    time.sleep(15)
EOF

sudo chmod +x /opt/app/monitor.py
echo "✅ Python script created at /opt/app/monitor.py"

# Step 2: Create systemd service file
sudo tee /etc/systemd/system/healthcheck.service > /dev/null <<EOF
[Unit]
Description=Health Check Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /opt/app/monitor.py
Restart=always
User=root

[Install]
WantedBy=multi-user.target
EOF

echo "✅ Systemd service file created at /etc/systemd/system/healthcheck.service"

# Step 3: Start and enable the service
sudo systemctl daemon-reload
sudo systemctl start healthcheck.service
sudo systemctl enable healthcheck.service
echo "✅ Service started and enabled on boot"

# Step 4: Show last 5 logs
echo " Last 5 logs from healthcheck.service:"
sudo journalctl -u healthcheck.service -n 5