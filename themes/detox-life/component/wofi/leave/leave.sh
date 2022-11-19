#!/usr/bin/env bash

choice=$( echo -e "  Poweroff\n  Reboot\n  Suspend\n  Lock\n  Logout" | wofi -i --dmenu | awk '{print tolower($2)}' )
if [[ $choice == "lock" ]];then
    bash ~/.config/system_scripts/wayland_session_lock
elif [[ $choice == "logout" ]];then
    pkill -KILL -u "$USER"
elif [[ $choice == "suspend" ]];then
    systemctl suspend
elif [[ $choice == "reboot" ]];then
    systemctl reboot
elif [[ $choice == "shutdown" ]];then
    systemctl poweroff
fi
