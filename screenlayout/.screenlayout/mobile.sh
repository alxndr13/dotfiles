#!/bin/sh
xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-1 --off
sleep 1
nitrogen --set-zoom-fill /usr/share/backgrounds/12-CANYON-Wallpaper-2400x1350-Dude.jpg
killall conky; start_conky_maia
