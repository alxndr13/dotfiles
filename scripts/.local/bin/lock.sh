#!/bin/bash
export XDG_RUNTIME_DIR=/run/user/1000
export XDG_CURRENT_DESKTOP="sway"
export WAYLAND_DISPLAY="wayland-1"
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_CLASS=user
export XDG_SESSION_ID=1

swaylock --hide-keyboard-layout \
    --indicator-caps-lock \
    --clock \
    --text-color c6d0f5 \
    --text-clear-color c6d0f5 \
    --text-ver-color c6d0f5 \
    --text-wrong-color 4C566A \
    --ring-color 303446 \
    --ring-clear-color ef9f76 \
    --ring-wrong-color 4C566A \
    --ring-ver-color a5adce \
    --indicator-radius 110 \
    --indicator-thickness 8 \
    --inside-color 4C566A \
    --inside-clear-color 4C566A \
    --inside-ver-color 4C566A \
    --inside-wrong-color e78284 \
    --key-hl-color babbf1 \
    -n \
    --grace 1 \
    -f \
    -e \
    -i /home/hucka/.wallpaper/arch-black-4k.png \
    -s fill \
    -l \
    --fade-in 2
