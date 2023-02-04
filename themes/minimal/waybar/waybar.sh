#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar -c $HOME/.config/hypr/themes/minimal/waybar/config -s $HOME/.config/hypr/themes/minimal/waybar/style.css &
