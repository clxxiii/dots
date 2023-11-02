#!/bin/sh

[ $1 == "up" ] && pactl set-sink-volume @DEFAULT_SINK@ +$2%
[ $1 == "down" ] && pactl set-sink-volume @DEFAULT_SINK@ -$2%
