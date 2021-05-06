#!/bin/bash

VPN=$1

if [ -z "$VPN" ]
then
    exit 1
fi

sudo systemctl status wg-quick@${VPN} 1>/dev/null

if [[ $? -eq 0 ]]
then
    echo ""
else
    echo ""
fi

exit 0
