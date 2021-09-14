#!/bin/bash
if [[ $(bluetoothctl show | grep Powered | tr -d '\t' | cut -d " " -f 2) = "yes" ]]; then
    echo "ON"
else
  echo "OFF"
fi
