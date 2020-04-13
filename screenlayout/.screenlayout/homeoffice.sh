#!/bin/sh
xrandr --output eDP-1 --off --output HDMI-1 --off --output DP-1 --mode 2560x1440 --rate 143.91 --pos 1920x0 --rotate normal --output HDMI-2 --off
sleep 1
nitrogren --restore
