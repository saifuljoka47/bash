#!/bin/bash
green='\033[0;32m'
red='\033[0;31m'
yellow='\033[1;33m'
reset='\033[0m'
echo "Using function and Array"
check() {
	if systemctl status $1 &>/dev/null; then
		if systemctl is-active --quiet $1 2>/dev/null; then
			echo -e "${yellow} The service $1 is running ${reset}"
		else
			echo -e "${red}The service $1 not running ${reset}"
		fi
	fi
}
menu() {
	echo -e "This function show menu items"
	echo "1. Single service check like httpd sshd firewalld"
	echo "2. Predefined Service check"
	echo "3. Multiple Service check"
	echo "4. exit from loop"
	echo -e "Choose your Option between 1 to 4"
	read choice
}
single() {
	echo -e "you choose 1.what service you like to check type below"
	read singleservice
	check $singleservice
}
predefined() {
	echo -e "You choose 2.sshd httpd firewalld service checking here"
	predefinedservice=("sshd" "httpd" "firewalld")
	for pre in "${predefinedservice[@]}"; do
		check $pre
	done
}
multiple() {
	echo -e "You choose 3 for multiple service check"
	read -a multiservice
	for multi in "${multiservice[@]}"; do
		check $multi
	done
}
while true; do
	menu
	if [ $choice -eq 1 ]; then
		single
	elif [ $choice -eq 2 ]; then
		predefined
	elif [ $choice -eq 3 ]; then
		multiple
	elif [ $choice -eq 4 ]; then
		echo -e "You choose 4.The loop is closing.By By"
		break
	else
		echo "You typed wrong.Please enter between 1 to 4.Thanks"
	fi
done
