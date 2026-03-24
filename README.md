<<<<<<< HEAD
# Linux DevOps Tasks Repository

A comprehensive collection of Linux system administration and DevOps automation tasks, designed to set up and manage critical system services, security, and monitoring.

---

## ðŸ“‹ Tasks Overview

### [Task 1: Developer Onboarding](./task-1-onboarding)
Sets up a `developer` user with SSH access and dedicated project directory.

**What It Does:**
- Creates `developer` user account
- Creates `/opt/project_alpha` project directory
- Sets proper ownership and permissions (700)
- Configures SSH keys for secure access

**Usage:**
```bash
cd task-1-onboarding && sudo bash command.sh
```

---

### [Task 2: The Service Guardian](./task-2-The_Service_Guardian)
Creates and manages a systemd health check service that monitors system health every 15 seconds.

**What It Does:**
- Creates Python monitoring script at `/opt/app/monitor.py`
- Creates systemd service file at `/etc/systemd/system/healthcheck.service`
- Enables and starts the service on boot
- Displays last 5 service logs for verification

**Usage:**
```bash
cd task-2-The_Service_Guardian && sudo bash Commands.sh
```

---

### [Task 3: Firewall and Web Security](./task-3-Firewall_and_Web_Securty)
Configures UFW (Uncomplicated Firewall) to secure the system while allowing SSH and web application traffic.

**What It Does:**
- Checks current UFW firewall status
- Opens port 22/tcp for SSH access
- Opens port 8080/tcp for web applications
- Enables the firewall with proper rules
- Tests outbound internet connectivity

**Usage:**
```bash
cd task-3-Firewall_and_Web_Securty && sudo bash command.sh
```

---

### [Task 4: Backup Automator](./task-4-Backup_Automator)
Automates daily backups of system logs with date-stamped compressed archives.

**What It Does:**
- Creates backup script at `/opt/backup_logs.sh`
- Creates backup directory `/tmp/backups`
- Compresses `/var/log` into tar.gz format
- Names backup with current date (YYYY-MM-DD)
- Executes the backup immediately

**Usage:**
```bash
cd task-4-Backup_Automator && sudo bash command.sh
```

---

### [Task 5: Resource Investigator](./task-5-Resource_Investigator)
Monitors and displays comprehensive system resource usage.

**What It Does:**
- Displays system uptime and load average
- Shows CPU usage information
- Displays memory and swap usage
- Shows disk space usage for mounted filesystems
- Lists top running processes by resource consumption

**Usage:**
```bash
cd task-5-Resource_Investigator && bash command.sh
```

## 🚀 Quick Start

### Prerequisites
- Linux system (Ubuntu/Debian recommended)
- Bash shell
- Sudo access (for tasks requiring root privileges)

### Running All Tasks
```bash
# Task 1 - Developer Onboarding
cd task-1-onboarding && sudo bash command.sh

# Task 2 - Service Guardian
cd ../task-2-The_Service_Guardian && sudo bash Commands.sh

# Task 3 - Firewall Configuration
cd ../task-3-Firewall_and_Web_Securty && sudo bash command.sh

# Task 4 - Backup Setup
cd ../task-4-Backup_Automator && sudo bash command.sh

# Task 5 - Resource Monitoring
cd ../task-5-Resource_Investigator && bash command.sh
```

---

## ðŸ“ Project Structure

```
linux-devops/
â”œâ”€â”€ task-1-onboarding/              # Developer user setup
â”œâ”€â”€ task-2-The_Service_Guardian/    # Health check service
â”œâ”€â”€ task-3-Firewall_and_Web_Securty/# UFW firewall config
â”œâ”€â”€ task-4-Backup_Automator/        # Automated backups
â”œâ”€â”€ task-5-Resource_Investigator/   # System monitoring
â””â”€â”€ README.md                        # This file
```

Each task folder contains:
- `README.md` - Detailed documentation
- `command.sh` / `Commands.sh` - Automation script
- `assets/` - Screenshots and supporting files

---

## ðŸ“ Notes

- **Task 1, 2, 3, 4:** Require `sudo` privileges for system-level operations
- **Task 5:** Can run with regular user permissions
- All scripts are idempotent where possible - safe to run multiple times
- Review each task's README for specific requirements and configuration details

---

## ðŸ“š Documentation

For detailed information about each task, see the individual README files:
- [Task 1 Details](./task-1-onboarding/README.md)
- [Task 2 Details](./task-2-The_Service_Guardian/README.md)
- [Task 3 Details](./task-3-Firewall_and_Web_Securty/README.md)
- [Task 4 Details](./task-4-Backup_Automator/README.md)
- [Task 5 Details](./task-5-Resource_Investigator/README.md)

---

## âš™ï¸ System Administration Tasks

This repository covers essential Linux DevOps skills:
- âœ… User and permission management
- âœ… Systemd service creation and management
- âœ… Firewall configuration and security
- âœ… Backup automation and log management
- âœ… System monitoring and resource analysis

---

## ðŸ“„ License

Open source - feel free to use and modify for your infrastructure needs.

---

## ðŸ¤ Contributing

Feel free to improve these scripts and add additional DevOps automation tasks!
=======
### Task 1: Developer Onboarding
Automate developer user setup with SSH key authentication.

**Features**:
- Creates `developer` user account
- Sets up `/opt/project_alpha` project directory
- Configures SSH key-based authentication
- Secures permissions (700 for dirs, 600 for keys)

**Run**:
```bash
sudo bash task-1-onboarding/command.sh

### Task 2: The Service Guardian
Set up automated health monitoring with systemd service.

Features:

Creates Python monitoring script
Deploys as systemd service
Runs health checks every 15 seconds
Auto-restart on failure
Logs to journalctl
Run:
sudo bash task-2-The_Service_Guardian/Commands.sh

### Task 3: Firewall and Web Security
Configure UFW firewall for system security.

Features:

Enables UFW firewall
Opens SSH port (22/tcp)
Opens web app port (8080/tcp)
Tests internet connectivity
Denies all other traffic by default
Run:
sudo bash task-3-Firewall_and_Web_Securty/command.sh

### Task 4: Backup Automator
Automate daily system log backups.

Features:

Creates backup script at /opt/backup_logs.sh
Compresses /var/log to tar.gz
Date-stamped archives: backup_YYYY-MM-DD.tar.gz
Stores in /tmp/backups/
Runs immediately after setup
Run:
sudo bash task-4-Backup_Automator/command.sh

### Task 5: Resource Investigator
Monitor and display system resource usage.

Features:

System uptime and load average
CPU information
Memory and swap usage
Disk space usage
Top running processes by resource consumption
Run:
bash task-5-Resource_Investigator/command.sh

>>>>>>> 6353a810565033da9710d3b6d1a82909d59cf27e

