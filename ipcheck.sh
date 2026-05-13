#!/bin/bash
>/bash/online.txt
>/bash/offline.txt
echo "I checking your ips"
ips=("192.168.61." "192.168.62." "192.168.63." "192.168.64." "192.168.65." "192.168.66." "192.168.67." "192.168.68." "192.168.69." "192.168.70." "192.168.71." "192.168.72." "192.168.73." "192.168.74." "192.168.75." "192.168.76." "192.168.80.")
for ip in "${ips[@]}"; do
	for i in {1..10}; do
	if	ping -c 1 -W 1 "${ip}${i}" &>/dev/null; then
		echo "Online ${ip}${i}"
		echo "${ip}${i}" >> /bash/online.txt
	else
		echo "Offline ${ip}${i}"
		echo "${ip}${i}" >> /bash/offline.txt
	fi
done
done
echo "Online Devices $(wc -l < /bash/online.txt)"
echo "Offline Devices $(wc -l < /bash/offline.txt)"
echo "Todays date is $(date)"
