#!/bin/sh

# Moves workspaces (excep the first one) from first monitor to new monitor

function handle {
  if [[ ${1:0:12} == "monitoradded" ]]; then
    hyprctl dispatch moveworkspacetomonitor "1 eDP-1"
    hyprctl dispatch moveworkspacetomonitor "2 HDMI-A-1"
    hyprctl dispatch moveworkspacetomonitor "3 DP-1"
    hyprctl dispatch moveworkspacetomonitor "4 DP-1"
    hyprctl dispatch moveworkspacetomonitor "5 DP-1"
    hyprctl dispatch moveworkspacetomonitor "6 DP-1"
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock | while read line; do handle $line; done