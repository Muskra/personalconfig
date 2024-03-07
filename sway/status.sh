#!/bin/ash

time_formatted=$(date '+%d-%m-%Y %I:%M')
#battery_formatted=$(~/.config/sway/battery.sh)
network_formatted=$(~/.config/sway/network.sh)
battery_formatted="$(cat /sys/class/power_supply/BAT0/capacity)% "
echo $network_formatted $time_formatted $battery_formatted
