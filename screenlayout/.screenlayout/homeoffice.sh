#!/bin/sh
xrandr --output eDP --off --output HDMI-A-0 --off --output DisplayPort-0 --off --output DisplayPort-1 --primary --mode 2560x1440 --rate 143.91  --pos 0x0 --rotate normal
sleep 1
nitrogen --set-zoom-fill /usr/share/backgrounds/12-CANYON-Wallpaper-2400x1350-Dude.jpg
killall conky; start_conky_maia
