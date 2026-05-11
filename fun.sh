#!/bin/bash
echo -e "please type your number"
read -a numbers
add() {
	sum=$(( $1 + $2 ))
	echo " $1 + $2 = $sum"
}
for i in "${!numbers[@]}"; do
	add "${numbers[i]}" "${numbers[i]}"
done
