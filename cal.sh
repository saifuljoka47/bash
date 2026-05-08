#!/bin/bash
echo -e "using function we make a calculator"
read -a numbers
check() {
	result=$(( $1 + $2 ))
	echo "$1 + $2 = $result "
}
check "${numbers[0]}" "${numbers[1]}"
check "${numbers[2]}" "${numbers[3]}"
