#!/bin/bash
#
# Create a backup directory if it doesn't exist
mkdir -p ~/backup

# Copy all .txt files from current directory to ~/backup
cp *.txt ~/backup

# Log the backup time
echo "Backup completed at $(date)" >> ~/backup/backup.log

echo "Backup successful!"
