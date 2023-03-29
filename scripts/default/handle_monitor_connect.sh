#!/bin/sh

function handle {
  DP1=$(hyprctl monitors -j | jq -r '.[] | select(.name == "DP-1") | .id') 
  HDMI1=$(hyprctl monitors -j | jq -r '.[] | select(.name == "HDMI-A-1") | .id') 
  if [[ ${1:0:12} == "monitoradded" ]]; then
    for i in {1..10}
    do
      hyprctl dispatch moveworkspacetomonitor "$i eDP-1"
    done
    if [[ $DP1 ]]; then
      START=$((1+10*1));
      END=$((10+10*1));
      for i in $(eval echo "{$START..$END}")
      do
        hyprctl dispatch moveworkspacetomonitor "$i DP-1"
      done
    fi
    if [[ $HDMI1 ]]; then
      START=$((1+10*2));
      END=$((10+10*2));
      for i in $(eval echo "{$START..$END}")
      do
        hyprctl dispatch moveworkspacetomonitor "$i HDMI-A-1"
      done
    fi
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock | while read line; do handle $line; done