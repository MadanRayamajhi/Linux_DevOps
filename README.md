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

