#!/bin/ash

# declarations
percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 |awk '/percentage:/{print $2}'|sed 's/%//')
percentage=$(($percentage+0))
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 |awk '/state:/{print $2}')
# states: discharging, pending-charge, charging

if [[ $state == "discharging" && $state != "charging" ]]; then
	if [[ $percentage -le 15 ]]; then
		echo "$percentage🗲 "
	elif [[ $percentage -le 25 ]]; then
		echo "🮢 "
	elif [[ $percentage -le 50 ]]; then
		echo "🮤 "
	elif [[ $percentage -le 75 ]]; then
		echo "🮭 "
	elif [[ $percentage -le 100 ]]; then
		echo "🮮 "
	fi
elif [[ $state == "charging" && $state != "discharging" || $state == "pending-charge" && $state != "discharging" ]]; then
	if [[ $percentage -le 15 ]]; then
			echo "🮧🗲 "
	elif [[ $percentage -le 25 ]]; then
		echo "🮧🮢 "
	elif [[ $percentage -le 50 ]]; then
		echo "🮧🮤 "
	elif [[ $percentage -le 75 ]]; then
		echo "🮧🮭 "
	elif [[ $percentage -le 100 ]]; then
		echo "🮧🮮 "
	fi
fi
