# Task 4: Backup Automator

## Quick Summary
Automates daily backups of system logs (`/var/log`) with date-stamped compressed archives.

## What It Does
1. Creates backup script at `/opt/backup_logs.sh`
2. Creates backup directory `/tmp/backups`
3. Compresses `/var/log` into tar.gz format
4. Names backup with current date (YYYY-MM-DD)
5. Executes the backup immediately

## Usage
```bash
sudo bash command.sh