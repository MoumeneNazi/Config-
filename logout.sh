#!/bin/bash

# Options for logout menu
option=$(echo -e "Logout\nReboot\nShutdown\nCancel" | rofi -dmenu -p "Power Menu")

case "$option" in
  Logout)
    i3-msg exit ;;                  # For i3wm, change for your WM
  Reboot)
    systemctl reboot ;;
  Shutdown)
    systemctl poweroff ;;
  *)
    exit 0 ;;
esac

