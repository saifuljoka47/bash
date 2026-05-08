#!/bin/bash
LOG_FILE="/tmp/backup.log"
echo "$(date) - backup start" >> $LOG_FILE
BACKUP_DIR="/tmp/backup_$(date +%Y%m%d)"
mkdir -p $BACKUP_DIR
cp -r /etc $BACKUP_DIR/ 2>/dev/null
echo "$(date) - backup done" >> $LOG_FILE
echo "Backup complete: $BACKUP_DIR"
echo "log show: $LOG_FILE"
