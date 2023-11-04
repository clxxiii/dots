#! /bin/bash
#
# Opens all the eww cards

EWW="eww-wayland"
CARD_NAMES=(np profile distro quickapps powermenu weather confirmation clock system sliders github youtube brightspace twitch calendar)

open() {
  for i in ${CARD_NAMES[*]};
  do
    $EWW open $i
  done
}

close() {
  for i in ${CARD_NAMES[*]};
  do
    $EWW close $i
  done
}

close
if [[ $1 != "close" ]]; then
 open
fi
