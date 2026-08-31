#!/bin/sh

devpath=/sys/class/power_supply/BAT0
level="$(cat "$devpath/capacity")"
t="$(echo "($level+5)/10" | bc)"
case "$t" in
	0) i=󰂎 ;; 1) i=󰁺 ;; 2) i=󰁻 ;; 3) i=󰁼 ;;
	4) i=󰁽 ;; 5) i=󰁾 ;; 6) i=󰁿 ;; 7) i=󰂀 ;;
	8) i=󰂁 ;; 9) i=󰂂 ;; 10) i=󰁹 ;;
esac
[ "$(cat "$devpath/status")" = Charging ] && i="${i}󱐋"

echo "${i} ${level}%"
