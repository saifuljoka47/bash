#!/bin/bash
fruits=("apple" "banana" "orange" "mango" "grape")
echo "all fruits are ${fruits[@]}"
echo ""
echo "Total fruits:${#fruits[@]}"
echo ""
for fruit in "${fruits[@]}"; do
	echo "$fruit"
done
echo ""
for i in "${!fruits[@]}"; do
	echo "Position $i have ${fruits[$i]}"
done

