#!/bin/sh

backlight_device='intel_backlight'
devpath="/sys/class/backlight/${backlight_device}"

fnid=/tmp/yorshex_dotfiles-last_brightness_notification_id
fbright="${devpath}/brightness"
fmax="${devpath}/max_brightness"

error() { echo "error: $1"; exit 1; }
get_brightness() {
	echo $(($(cat "$fbright") * 100 / maxbright));
}
is_digits() {
	case "$1" in
	*[!0123456789]*) return 1 ;;
	'') return 1 ;;
	*) return 0 ;;
	esac
}

[ -r "$fmax" ] || error "no read permission"
[ -r "$fbright" ] || error "no read permission"
[ -w "$fbright" ] || error "no write permission"
maxbright="$(cat "$fmax")"

if is_digits "${1#[+-]}"; then
	case "$1" in
	([+-]*) value=$(($(get_brightness) + $1)) ;;
	(*) value="$1" ;;
	esac

	[ "$value" -lt 0 ] && value=0
	[ "$value" -gt 100 ] && value=100
	rawvalue=$((value * maxbright / 100 + 1))
	[ "$rawvalue" -gt "$maxbright" ] && rawvalue="$maxbright"
	[ "$rawvalue" -lt 1 ] && rawvalue=1
	echo "$rawvalue" > "$fbright"
fi

if [ "$DISPLAY" ]; then
	nid="$(cat "$fnid")"
	is_digits "$nid" && nidarg="-r $nid"
	notify-send -u low -e $nidarg -p "Brightness: $(get_brightness)%" >"$fnid"
else
	echo "Brightness: $(get_brightness)%"
fi
