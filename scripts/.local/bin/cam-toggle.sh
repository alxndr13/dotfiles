#!/bin/bash
sudo stat /sys/bus/usb/drivers/usb/2-2
if [[ $? -eq 0 ]]; then
    echo "2-2" | sudo tee /sys/bus/usb/drivers/usb/unbind
    notify-send "Webcam Toggle" "Toggled Cam to [off]" -i microphone-disabled-symbolic.symbolic -t 2000
else
    echo "2-2" | sudo tee /sys/bus/usb/drivers/usb/bind
    notify-send "Webcam Toggle" "Toggled Cam to [on]" -i microphone-disabled-symbolic.symbolic -t 2000
fi
