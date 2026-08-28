#!/bin/sh

backlight_device='intel_backlight'

devpath="/sys/class/backlight/${backlight_device}"
brightpath="${devpath}/brightness"
maxpath="${devpath}/max_brightness"

error() {
	echo "error: $1"
	exit 1
}

domath() {
	echo "$1" | bc || error "math error"
}

is_digits() {
	case "$1" in
	*[!0123456789]*) return 1 ;;
	'') return 1 ;;
	*) return 0 ;;
	esac
}

is_integer() {
	is_digits "${1#[+-]}"
}

# basic getters/setters
get_max_brightness() {
	[ -r "$maxpath" ] || error "no read permission"
	cat "$maxpath"
}

get_brightness() {
	[ -r "$brightpath" ] || error "no read permission"
	cat "$brightpath"
}

set_brightness() {
	[ -w "$brightpath" ] || error "no write permission"
	echo "$1" > "$brightpath"
}

# 100-scale getters/setters
get_brightness100() {
	[ -z "$maxbright" ] && maxbright="$(get_max_brightness)"
	domath "$(get_brightness) * 100 / ($maxbright - 1)"
}

set_brightness100() {
	[ -z "$maxbright" ] && maxbright="$(get_max_brightness)"
	local value="$1"
	[ "$value" -lt 0 ] && local value=0
	[ "$value" -gt 100 ] && local value=100
	local rawvalue="$(domath "$value * ($maxbright - 1) / 100 + 1")"
	[ "$rawvalue" -gt "$maxbright" ] && local rawvalue="$maxbright"
	set_brightness "$rawvalue"
}

if is_integer "$1"; then
	case "$1" in
	[+-]*) value="$(domath "$(get_brightness100) $1")" ;;
	*) value="$1" ;;
	esac
	set_brightness100 "$value"
fi

if [ "$DISPLAY" ]; then
	nidfile=/tmp/yorshex_dotfiles-last_brightness_notification_id
	nid=0
	[ -f "$nidfile" ] && nid="$(cat "$nidfile")"
	is_digits "$nid" || nid=0
	notify-send -u low -e -r "$nid" -p "Brightness: $(get_brightness100)%" >"$nidfile"
else
	echo "Brightness: $(get_brightness100)%"
fi
