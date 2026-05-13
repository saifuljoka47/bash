#!/bin/bash
echo -e "Here we check disk status"
df -h -x iso9660 | awk 'NR>1' | awk '{print $5 " " $6 }' | while read disk; do
usage=$( echo $disk | awk '{print $1}' | sed 's/%//')
disk_name=$( echo $disk | awk '{print $2}')
if [ $usage -ge 20 ]; then
	echo -e "The disk name $disk_name is $usage%\n Please take necessary action"
fi
done
