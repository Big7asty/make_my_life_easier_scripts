#!/bin/sh

##################################################
# Small bash script for wireless interface check #
##################################################

echo "Checking for wlan0 and wlan0mon"

iw dev wlan0 scan >/tmp/iw_int_out 2>&1
iwlist wlan0mon channel >>/tmp/iw_int_out 2>&1

# Wireless interface is in managed mode
if egrep -q "DS\ Parameter\ set|SSID" /tmp/iw_int_out; then
    echo "wlan0 up, surrounding AP's are;"
    egrep "DS\ Parameter\ set|SSID" /tmp/iw_int_out
else
    echo "wlan0 not found"
    echo "If you are wanting to do a quick AP scan, place wlan0mon in managed mode"
fi

# Wireless interface is in monitor mode
if grep -q "Current Frequency" /tmp/iw_int_out; then
    echo ""
    echo "wlan0mon"
    grep "Current Frequency" /tmp/iw_int_out
else
    echo "wlan0mon is down"
fi

rm /tmp/iw_int_out
