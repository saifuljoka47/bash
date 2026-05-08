#!/bin/bash
echo "=============================="
echo "1 for check sshd service"
echo "2 for check httpd service"
echo "3 for check firewalld service"
echo "4 for exit"
echo -n "your choice"
read choice

if [ $choice -eq 1 ]; then
	echo "you choice 1"
	echo "Checking sshd Service"
	systemctl is-active sshd 2>/dev/null
elif [ $choice -eq 2 ]; then
	echo "you choice 2"
	echo "Checking httpd Service"
	systemctl is-active httpd 2>/dev/null
elif [ $choice -eq 3 ]; then
	echo "you choice 3"
	echo "Checking firewalld service"
	systemctl is-active firewalld 2>/dev/null
elif [ $choice -eq 4 ]; then
	echo "Thanks"
else
	echo "You typed wrong"
fi
