#!/bin/bash
echo "type your service name using space"
read -a services
for service in "${services[@]}"; do
	if systemctl is-active --quiet "$service" 2>/dev/null; then
		echo "This service $service is running"
	else
		echo "THis service $service is not running"
	fi
done
