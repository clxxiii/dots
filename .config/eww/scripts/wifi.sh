#!/bin/sh

symbol() {
[ $(cat /sys/class/net/w*/operstate) = down ] && echo nope && exit
echo yep
}

name() {
nmcli | grep "^wlp" | sed 's/\ connected\ to\ /Connected to /g' | cut -d ':' -f2
}

[ "$1" = "icon" ] && symbol && exit
[ "$1" = "name" ] && name && exit
