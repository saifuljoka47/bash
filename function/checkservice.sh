#!/bin/bash
echo "type your service name to check status"
while true; do
	read input
	echo "You typed $input"
	if systemctl status $input &>/dev/null; then
		echo "Checking Service:$input"
		if systemctl is-active --quiet $input 2>/dev/null; then
			echo "This service:$input is running"
			break
		else
			echo "This Service:$input is not running"
			break
		fi
		echo "This service is not found:$input"
	fi
done
