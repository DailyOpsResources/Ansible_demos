#!/bin/bash

# Backup Logs Script. Modify the paths as per your environment and target server configurations.

# Set the source and destination directories
source_dir="/var/log/messages"
backup_dir="/home/backup/logs"

# Set the backup file name with timestamp
backup_file="logs_$(date +"%Y%m%d_%H%M%S").tar.gz"

# Create a backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Compress and backup log files
tar -czf "$backup_dir/$backup_file" --absolute-names  "$source_dir"

# Verify the backup
if [ -f "$backup_dir/$backup_file" ]; then
    echo "Log backup created successfully: $backup_dir/$backup_file"
else
    echo "Log backup failed!"
fi
