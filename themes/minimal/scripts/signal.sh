#! /bin/sh

sleep 7

socat -u UNIX-CONNECT:/tmp/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock - | while read -r event; do 
pkill -RTMIN+9 waybar
done