#!/bin/bash
echo -e "Please type your number"
read -a numbers
add() {
	sum=$(( $1 + $2 ))
	echo "$1 + $2 = $sum"
}
add "${numbers[0]}" "${numbers[1]}"
add "${numbers[2]}" "${numbers[3]}"
