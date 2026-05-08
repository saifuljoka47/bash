#!/bin/bash
echo "Select your district: "
select district in "Dhaka" "khulna" "bogura" "jamalpur" "exit"; do
	case $district in
		"Dhaka")
			echo "You select dhaka"
			;;
		"khulna")
			echo "you select khulna"
			;;
		"bogura")
			echo "you select bogura"
			;;
		"jamalpur")
			echo "you select jamalpur"
			;;
		"exit")
			echo "Thanks"
			break
			;;
		*)
			echo "Wrong Selection"
			;;
	esac
done
