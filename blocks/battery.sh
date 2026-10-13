#!/bin/sh

devpath=/sys/class/power_supply/BAT0
level="$(cat "$devpath/capacity")"
t=$(((level+5)/10))
case "$t" in
	(0) i=󰂎 ;; (1) i=󰁺 ;; (2) i=󰁻 ;; (3) i=󰁼 ;;
	(4) i=󰁽 ;; (5) i=󰁾 ;; (6) i=󰁿 ;; (7) i=󰂀 ;;
	(8) i=󰂁 ;; (9) i=󰂂 ;; (10) i=󰁹 ;;
esac
s="$(cat "$devpath/status")"
if [ "$s" = 'Charging' ]; then i="${i}󱐋"
elif [ "$s" != 'Charging' ] && [ "$level" -le 30 ]; then i="${i}"
elif [ "$s" = 'Not charging' ] && [ "$level" -lt 100 ]; then i="${i}-"
fi

echo "${i} ${level}%"
