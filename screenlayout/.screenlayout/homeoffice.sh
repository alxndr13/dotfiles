#!/bin/sh
xrandr --output eDP1 --off --output DP1 --mode 3840x2160 --pos 0x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off
sleep 4
feh --bg-fill --randomize ~/.wallpaper/*
