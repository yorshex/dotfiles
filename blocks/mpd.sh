#!/bin/sh
icon='󰓛'
msg='mpd'
if ! mpc >/dev/null 2>&1; then echo "mpd down"; exit 1; fi
state=$(mpc status %state%)
[ "$state" = playing ] && icon='󰎇'
[ "$state" = paused ] && icon='󰏤'
[ "$state" != stopped ] && msg=$(mpc -f '[%title%[ — %artist%]]|[%file%]' | sed 'q')
echo "$icon $msg"
