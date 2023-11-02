#! /usr/bin/bash

ICON_DIRECTORY="~/.local/share/icons/dracula-dark/scalable/apps"

LC=$(echo "${1,,}")

echo "$ICON_DIRECTORY/$LC.svg"
