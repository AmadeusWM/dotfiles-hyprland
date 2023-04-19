#! /bin/sh

sleep 5

signal() {
if [[ ${1:0:12} == "activewindow" && ${1:0:14} != "activewindowv2" ]]; then #set focused workspace
    pkill -RTMIN+9 waybar
fi
}

socat -u UNIX-CONNECT:/tmp/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock - | while read -r event; do 
signal "$event"
done