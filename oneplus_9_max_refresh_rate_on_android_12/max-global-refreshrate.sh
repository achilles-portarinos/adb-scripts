#!/bin/bash

if [ "$1" == "" ]; then
    echo "Error: missing argument ip:port"
    echo ""
    echo "Please provide the ip:port where the wireless adb bridge is running."
    echo "Check your android device under developer options -> wireless debugging to get the ip:port"
    exit 1
fi

~/Documents/platform-tools/adb connect $1

~/Documents/platform-tools/adb shell settings put system peak_refresh_rate 1
~/Documents/platform-tools/adb shell settings put system min_refresh_rate 1

~/Documents/platform-tools/adb disconnect $1