#!/bin/bash
declare -A user_info
user_info["rahim"]="Engineer, 30, Dhaka"
user_info["karim"]="Doctor, 35, Chittagong"
user_info["fatema"]="Teacher, 28, Sylhet"
echo -e "now we show value"
echo "Rahim's Information: ${user_info["rahim"]}"
echo "Karim's Information: ${user_info["karim"]}"
echo " "
echo "All key show:"
for key in "${user_info[@]}"; do
	echo " - $key"
done
echo " "

echo "All Users information:"
for key in "${!user_info[@]}"; do
	echo " $key: ${user_info[$key]}"
done
