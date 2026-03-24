#!/bin/bash

# Step A: Write backup_logs.sh
sudo /opt/backup_logs.sh 
#!/bin/bash

# Step B & Step C: Create compressed tar.gz archive of /var/log with current date
DATE=$(date +%F)
BACKUP_FILE="/tmp/backups/backup_$DATE.tar.gz"

# Step D: Ensure /tmp/backups exists and move the backup there
mkdir -p /tmp/backups
tar -czf "$BACKUP_FILE" /var/log

# Make the script executable
sudo chmod +x /opt/backup_logs.sh

# Run the backup script
sudo /opt/backup_logs.sh