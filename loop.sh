#!/bin/bash
check() {
	echo "Service name: $1"
	if systemctl is-active --quiet $1 2>/dev/null; then
		echo "This service $1 is running"
	else
		echo "This service $1 not running"
	fi
}
while true; do
	echo ""
	echo "1. Check your Service $1"
	echo "2. Exit"
	echo -n "Your choice:"
	read choice
	if [ $choice -eq 1 ]; then
		echo -n "Service Name: "
		read serv
		check $serv
	elif [ $choice -eq 2 ]; then
		echo "by-by"
		break
	else
		echo "wrong"
	fi
done
