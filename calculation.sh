#!/bin/bash
num1=10
num2=20
result1=$(( num1 + num2 ))
echo "$num1 + $num2 = $result1"
num3=15
num4=25
result2=$(( num3 + num4 ))
echo "$num3 + $num4 = $result2"
num5=100
num6=200
result3=$(( num5 + num6 ))
echo "$num5 + $num6 = $result3"
echo "Now we are trying using function"
add() {
	result=$(( $1 + $2 ))
	echo "$1 + $2 = $result"
}
add 10 20
add 15 25
add 100 200
add 5 7
add 50 50
