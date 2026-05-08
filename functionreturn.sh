#!/bin/bash
addnumbers() {
	local result=$(( $1 + $2 ))
	echo $result
}
multiplynumbers() {
	local result=$(( $1 * $2 ))
	echo $result
}
sum=$(addnumbers 10 20)
product=$(multiplynumbers 5 6)
echo "10 + 20 = $sum"
echo "5 * 6 = $product"
echo "50 + 30 = $(addnumbers 50 30)"
