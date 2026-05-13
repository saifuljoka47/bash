#!/bin/bash
echo -e "Here we check disk status"
df -h -x iso9660 | awk 'NR>1' | awk '{print $5 " " $6}' | while read disk; do
usage=$( echo $disk | awk '{print $1}' | sed 's/%//')
disk_name=$( echo $dik | awk '{print $2}')
echo $usage
done
