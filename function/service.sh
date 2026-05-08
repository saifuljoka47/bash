#!/bin/bash
echo -e "Please type your service name"
read -a services
check() {
	local service_name=$1
	if systemctl status $service_name &>/dev/null; then
	echo "Checking service: $service_name"
	if systemctl is-active --quiet $service_name 2>/dev/null; then
		echo "Service:$service_name is running"
	else
		echo "Service:$service_name is off"
	fi
	fi
}
for service in "${services[@]}"; do
	
check $service
done
	
