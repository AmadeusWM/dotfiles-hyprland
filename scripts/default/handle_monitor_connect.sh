#!/bin/sh

# Moves workspaces (excep the first one) from first monitor to new monitor

function handle {
  if [[ ${1:0:12} == "monitoradded" ]]; then
    # hyprctl dispatch moveworkspacetomonitor "1 1"
    hyprctl dispatch moveworkspacetomonitor "2 2"
    hyprctl dispatch moveworkspacetomonitor "3 2"
    hyprctl dispatch moveworkspacetomonitor "4 2"
    hyprctl dispatch moveworkspacetomonitor "5 2"
    hyprctl dispatch moveworkspacetomonitor "6 2"
  fi
}

socat - UNIX-CONNECT:/tmp/hypr/"$HYPRLAND_INSTANCE_SIGNATURE"/.socket2.sock | while read line; do handle $line; done