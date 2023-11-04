
if [[ $1 == "poweroff" ]]; then
  systemctl shutdown
fi
  
if ! [[ $1 != "restart" ]]; then
  systemctl reboot
fi

if ! [[ $1 != "logout" ]]; then
  ~/.config/rofi/logout
fi
