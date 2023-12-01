#!/bin/sh

symbol() {
[ $(cat /sys/class/net/w*/operstate) = down ] && echo  && exit
echo 
}

name() {
nmcli | grep "^wlan0" | sed 's/\ connected\ to\ //g' | cut -d ':' -f2
}

[ "$1" = "icon" ] && symbol && exit
[ "$1" = "name" ] && name && exit
