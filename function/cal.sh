#!/bin/bash
echo " checking manualy"
num1=10
num2=20
num3=30
num4=40
result1=$((num1 + num2))
result2=$((num3 + num4))
echo "10 + 20 = $result1"
echo "30 + 40 = $result2"
echo "checking using function"
add() {
	result=$(( $1 + $2 ))
	echo "$1 + $2 = $result"
}
add 10 20
add 30 40

