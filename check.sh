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

echo -e "We are checking services"
menu() {
	echo -e "Here we show menu options"
	echo -e "1.Predefined services like httpd sshd"
	echo -e "2.single service like httpd"
	echo -e "3.Multi service"
	echo -e "4.Exit"
	echo -e "Between 1 to 4 press any number"
}
predefined() {
	service=("httpd" "sshd" "firewalld")
	for serv in "${service[@]}"; do
		check $serv
	done
}
single() {
	echo -e "Just type one service name and press enter"
	read service
	check $service
}
multi() {
	echo -e "Now you can type many services"
	read -a service
	for serv in "${service[@]}"; do
		check $serv
	done
}
while true; do
	menu
	read choice
	if [ $choice -eq 1 ]; then
		echo -e "you choose option 1"
		predefined
	elif [ $choice -eq 2 ]; then
		echo -e "you choose option 2"
		single
	elif [ $choice -eq 3 ]; then
		echo -e "you choose option 3"
		multi
	elif [ $choice -eq 4 ]; then
		echo -e "you choose option 4\n Now time to say goodby"
		break
	else
		echo -e "You enter wrong number \n press between 1-4"
	fi
done
