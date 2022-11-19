#!/usr/bin/env bash

THEME="$HOME/.config/bspwm/rofi/powermenu.rasi"

rofi_command="rofi -no-config -theme $THEME"

# Options
shutdown="Shutdown"
reboot="Restart"
lock="Lock"
suspend="Suspend"
logout="Logout"

# Variable passed to rofi
options="$lock\n$suspend\n$logout\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
      systemctl poweroff
        ;;
    $reboot)
		  systemctl reboot
        ;;
    $lock)
			betterlockscreen -l
        ;;
    $suspend)
		  systemctl suspend
        ;;
    $logout)
      bspc quit
        ;;
esac
