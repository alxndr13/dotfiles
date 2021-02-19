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
    nmcli con up id "$VPN"
else
    notify-send -t 5 "VPN Toggle" "Deactivated $VPN"
    nmcli con down id "$VPN"
fi

exit 0
