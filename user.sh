#!/bin/bash
check_service() {
	local service_name=$1
	echo "checking: $service_name"
	if systemctl is-active --quiet $service_name 2>/dev/null; then
		echo "$service_name is running"
	else
		echo "$service_name is not running"
	fi
}
echo -n "type your service name to check status"
read user_service
check_service $user_service
