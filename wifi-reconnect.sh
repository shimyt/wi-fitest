#!/bin/bash

WIFI_NETWORK_NAME="EBC-Guest"

CURRENT_WIFI_NETWORK=$(networksetup -getairportnetwork en0 | awk -F': ' '{print $2}')

if [ "$CURRENT_WIFI_NETWORK" != "$WIFI_NETWORK_NAME" ]; then
    networksetup -setairportnetwork en0 "$WIFI_NETWORK_NAME"
fi
