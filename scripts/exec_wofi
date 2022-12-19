#!/bin/sh

function app_launcher(){
    wofi --show drun
}


function wifi_menu(){
    nm-connection-editor &
}

doc() {
    echo "Usage:
    set_env [Options]

    Options:
        application_launcher    Runs wofi application launcher
        wifi                    Runs wofi wifi menu"
}


killall wofi

case $1 in 
  application_launcher) app_launcher   ;;
  wifi)                 wifi_menu                   ;;
  *) doc                            ;;
esac