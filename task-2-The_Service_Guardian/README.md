# Task 2: The Service Guardian

## Quick Summary
Creates and manages a systemd health check service that monitors system health every 15 seconds.

## What It Does
1. Creates Python monitoring script at `/opt/app/monitor.py`
2. Creates systemd service file at `/etc/systemd/system/healthcheck.service`
3. Enables and starts the service on boot
4. Displays last 5 service logs

## Usage
```bash
sudo bash Commands.sh
```

## Screenshots

### Python Monitoring Script
![Python Monitoring Script](./assets/python-script.png)

### Systemd Service File
![Systemd Service File](./assets/systemd-servicefile.png)

### Service Verification
![Service Verification](./assets/service-verify.png)