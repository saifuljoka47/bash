#!/bin/bash
show_args() {
	echo "Total Argument: $#"
	echo "1st argument: $1"
	echo "2nd argument: $2"
	echo "3rd argument: $3"
	echo "4th argument: $4"
	echo "All argument: $@"
}
show_args "Apple" "Banana" "melon" "orange"
