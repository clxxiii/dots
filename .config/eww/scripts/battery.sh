#!/bin/sh

bat=/sys/class/power_supply/BAT0/
per="$(cat "$bat/capacity")"

icon() {

[ $(cat "$bat/status") = Charging ] && echo "" && exit

if [ "$per" -gt "15" ]; then
	icon=""
elif [ "$per" -gt "10" ]; then
	icon=""
	# notify-send -u critical "Battery Low" "Connect Charger"
else
        echo  && exit
fi
echo "$icon"
}

percent() {
echo $per
}

[ "$1" = "icon" ] && icon && exit
[ "$1" = "percent" ] && percent && exit
exit
