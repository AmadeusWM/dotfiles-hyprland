#!/bin/sh

killall linux-wallpaperengine

waterfallPixelated=1569030610
waterfallPokemon=2913091682
clouds=2944773634 # lags
girl=2799877694 # doesnt work
pixelPlanetAndMoond=2444422516 # doesnt work
otherGirl=2963677397
bikiniGirl=2927180913 
sheep=1568649877 # https://steamcommunity.com/sharedfiles/filedetails/?id=1568649877&searchtext=sheep
kirby=2963361426 # https://steamcommunity.com/sharedfiles/filedetails/?id=2963361426

current=$waterfallPixelated

~/Applications/linux-wallpaperengine/build/linux-wallpaperengine -i eDP-1 $current &
~/Applications/linux-wallpaperengine/build/linux-wallpaperengine -i DP-1 $current &
~/Applications/linux-wallpaperengine/build/linux-wallpaperengine -i HDMI-A-1 $current &