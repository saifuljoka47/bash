#!/bin/bash
echo "Array And Function together"
check() {
	echo "We are now checking service using array and function"
	if systemctl status $1 &>/dev/null; then
		if systemctl is-active --quiet $1 2>/dev/null; then
			echo "The service $1 is running"
		else
			echo "The service $1 not running"
		fi
	fi
}

menu() {
	echo "Now time to show menu here"
	echo "=====You choice between 1 to 4 ====="
	echo "1. This is for Single Service check"
	echo "2. This is for Predefined Service check"
	echo "3. This is for Multiple Service check"
	echo "4. This is for Exit from loop"
	echo -e "Now choose between 1 to 4 "
}
predefined() {
	service1=("sshd" "httpd" "firewalld")
	for serv1 in "${service1[@]}"; do
		check $serv1
	done
}
multiple() {
	echo -e "Now your turn to type services: "
	read -a service2
	for serv2 in "${service2[@]}"; do
		check $serv2
	done
}
single() {
	echo -e "This is time to check only one service"
	read service3
	check $service3
}
while true; do
	menu
	read choice
	if [ $choice -eq 1 ]; then
		echo -e "Now you type like sshd httpd nginx firewalld etc one service name"
		single
	elif [ $choice -eq 2 ]; then
		echo -e "Now you show predefined services"
		predefined
	elif [ $choice -eq 3 ]; then
		echo -e "Now you can type many services like httpd nginx sshd"
		multiple
	elif [ $choice -eq 4 ]; then
		echo -e "This is the time to say goodby because you choose option 4"
		echo "By By"
		break
	else
		echo -e "You typed wrong number.Please type between 1 to 4."
	fi
done

