#!/bin/bash
echo -e "Type only one service name like sshd httpd firewalld"
read service
check() {
	echo "You typed $1"
	echo "Checking $1 "
	if systemctl is-active --quiet $1 2>/dev/null; then
		echo "$1 is running"
	else
		echo "$1 is not running"
	fi
}
check $service
