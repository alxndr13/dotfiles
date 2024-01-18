#!/bin/bash

VPN=$1

if [ -z "$VPN" ]
then
    exit 1
fi

sudo systemctl status wg-quick@${VPN} 1>/dev/null

if [[ $? -ne 0 ]]; then
    notify-send -t 5000 "VPN Toggle" "🟢 Activated Wireguard $VPN"
    sudo systemctl start wg-quick@client
else
    notify-send -t 5000 "VPN Toggle" "🛑 Deactivated Wireguard $VPN"
    sudo systemctl stop wg-quick@client
fi

exit 0
