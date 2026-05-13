#!/bin/bash
echo -e "Here we show menu Now"
echo "1.predefined menu"
echo "2.Single menu"
echo "3.Multiple menu"
echo "4.Exit"
read number
while true; do
	if [ $number -eq 1 ]; then
		echo -e "You typed number 1\n Thanks"
		break
	elif [ $number -eq 2 ]; then
		echo -e "you typed number 2\n Thanks"
		break
	elif [ $number -eq 3 ]; then
		echo -e "you typed number 3\n Thanks"
		break
	elif [ $number -eq 4 ]; then
		echo -e "Exit"
		break
	else
		echo "wrong number.press between 1-4.Thanks"
		break
	fi
done
		
