#! /bin/bash
#
# Opens all the eww cards

EWW="eww"
CARD_NAMES=(np profile distro quickapps powermenu weather confirmation clock system sliders github youtube brightspace twitch todoist wifi sysfetch)

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
toggle() {
  CURRENT_STATE=$($EWW state | grep cardsvisible)  
  if [[ $CURRENT_STATE == "cardsvisible: false" ]]; then
    $EWW update cardsvisible=true
  else
    $EWW update cardsvisible=false
  fi
}

if [[ $1 == "open" ]]; then
  open
elif [[ $1 == "close" ]]; then
  close
elif [[ $1 == "toggle" ]]; then
  toggle
fi
