#!/bin/bash

VPN=$1

if [ -z "$VPN" ]
then
    exit 1
fi

ACTIVE=$(nmcli con show --active | grep "$VPN")

if [ -z "$ACTIVE" ]
then
    notify-send -t 5 "VPN Toggle" "Activated $VPN"
    sudo systemctl start wg-quick@client
else
    notify-send -t 5 "VPN Toggle" "Deactivated $VPN"
    sudo systemctl stop wg-quick@client
fi

exit 0
