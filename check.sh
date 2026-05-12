#!/bin/bash
check() {
	if systemctl status $1 &>/dev/null; then
		if systemctl is-active --quiet $1 2>/dev/null; then
			echo "this service $1 is running"
		else
			echo "this service $1 not running"
		fi
	fi
}

echo -e "Type a service name"
read service
check $service
