#!/bin/sh
ismuted="$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')"
volume="$(pactl get-sink-volume @DEFAULT_SINK@ |
	sed '1!d' | awk -F' / ' '{print $2}' | sed 's/\(...\).*/\1/')"

case "$ismuted" in
	'yes' )
		icon='X' ;;
	'no' )
		if [ "$volume" -ge 50 ]; then icon=''
		elif [ "$volume" -gt 0 ]; then icon=''
		else icon=''
		fi ;;
esac

echo "${icon} ${volume}%"
