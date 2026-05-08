#!/bin/bash
check() {
	echo "Checking service $1"
	if systemctl is-active --quiet $1 2>/dev/null; then
		echo "This service $1 is running"
	else
		echo "The service $1 is not running"
	fi
}
check "sshd"
echo "================"
check firewalld
echo "==================="
check "syx"
