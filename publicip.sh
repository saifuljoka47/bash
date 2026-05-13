#!/bin/bash
get_public_ip() {
	ip=$(curl -s https://api.ipify.org 2>/dev/null)
	if [ -z "$ip" ]; then
		ip=$(curl -s https://icanhazip.com 2>/dev/null)
	fi
	if [ -z "$ip" ]; then
		ip=$(curl -s https://ifconfig.me 2>/dev/null)
	fi
	echo "$ip"
}
get_local_ip() {
	hostname -I
}

echo "=============ip address=========================="
echo " "
local_ip=$(get_local_ip)
echo "Your Local: $local_ip"
echo " "
public_ip=$(get_public_ip)
if [ -n "$public_ip" ]; then
	echo "Your public ip: $public_ip"
else
	echo "your public ip not found"
fi
