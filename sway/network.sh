#!/bin/ash

# declarations
reception=$(ifconfig wlan0 |awk '/RX bytes/{print $3$4}' |tr -d '()')
transmission=$(ifconfig wlan0 |awk '/RX bytes/{print $7$8}' |tr -d '()')
# print result
echo "$transmission⬆️⬇️$reception"
