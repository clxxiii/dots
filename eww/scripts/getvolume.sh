#!/bin/sh
pactl get-sink-volume @DEFAULT_SINK@ | grep -E -o '[1234567890]{1,3}%' | tr -d '%' | head -n 1
