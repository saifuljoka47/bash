#!/bin/bash
get_weather() {
	local $1

	city_encoded=$(echo $1 | sed 's/ /%20/g')
	echo "weather report :$1"
	curl -s "wttr.in/${city_encoded}?format=3" 2>/dev/null
	if [ $? -ne 0 ]; then
		echo "No weather report found"
		return 1
	fi
}
echo "==============Weather checker===================="
echo ""
echo -e "type your city name like dhaka"
read city
if [ -n "$city" ]; then
	echo " "
	get_weather "$city"
else
	echo "No city name you typed"
fi
