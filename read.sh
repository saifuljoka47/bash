#!/bin/bash
echo  "Type your services name"
read -a services
for service in "${services[@]}"; do
	if systemctl status $service &>/dev/null; then
	if systemctl is-active --quiet $service; then
		echo "The service is $service is running"
	else
		echo "The service is $service is not running"
	fi
	else
		echo "The service $service is not found"
	fi
done
