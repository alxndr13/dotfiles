#!/bin/bash
set -e
amixer -D pulse sset Capture toggle
notify-send "Microphone Toggle" "Toggled Mic to $(amixer -D pulse get Capture | grep '%' | grep -oE '[^ ]+$' | head -n 1)" -i microphone-disabled-symbolic.symbolic -t 2000
