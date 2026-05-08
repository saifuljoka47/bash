#!/bin/bash
source /bash/config.sh
echo "back dir: $backup"
echo "log dir: $log"
echo "Retention days: $retention_days"
echo "admin mail: $admin_email"
mkdir -p $backup
echo -e "backup dir create done"
