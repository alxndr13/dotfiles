#!/bin/sh
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output HDMI-2 --off
sleep 1
nitrogen --set-zoom-fill /usr/share/backgrounds/sven-scheuermeier-VNseEaTt9w4-unsplash.jpg
killall conky; start_conky_maia
