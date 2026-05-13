#!/bin/bash
service() {
	if systemctl status $1 &>/dev/null; then
		if systemctl is-active --quiet $1 2>/dev/null; then
			echo "the service $1 is running"
		else
			echo "the service $1 not active"
		fi
	fi
}
predefined() {
	services=("httpd" "sshd" "firewalld")
	for serv in "${services[@]}"; do
		service $serv
	done
}
single() {
	echo -e "now type only one service name like sshd"
	read services
	service $services
}
multi() {
	echo -e "Now you type multi service name like httpd firewalld"
	read -a services
	for serv in "${services[@]}"; do
		service $serv
	done
}
menu() {
echo -e "Here we show menu Now"
echo "1.predefined menu"
echo "2.Single menu"
echo "3.Multiple menu"
echo "4.Exit"
}
while true; do
	menu
	read number
	if [ $number -eq 1 ]; then
		predefined
	elif [ $number -eq 2 ]; then
		single
	elif [ $number -eq 3 ]; then
		multi
	elif [ $number -eq 4 ]; then
		echo -e "Exit"
		break
	else
		echo "wrong number.press between 1-4.Thanks"
	fi
done
		
