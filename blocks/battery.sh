#!/bin/sh

level="$(cat /sys/class/power_supply/BAT0/capacity)"

echo "󰁹 ${level}%"
