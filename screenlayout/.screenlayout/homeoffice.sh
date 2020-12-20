#!/bin/sh
xrandr --output eDP-1 --off --output HDMI-1 --off --output HDMI-1 --mode 2560x1440 --rate 143.91 --pos 1920x0 --rotate normal --output HDMI-2 --off
sleep 1
nitrogen --set-zoom-fill /usr/share/backgrounds/sven-scheuermeier-VNseEaTt9w4-unsplash.jpg
killall conky; start_conky_maia
pulseaudio -k
sleep 2
pacmd set-default-sink 7
