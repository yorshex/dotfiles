#!/bin/sh
icon='󰓛'
msg='mpd'
state=`mpc status %state%`
[ "$state" = playing ] && icon='󰎇'
[ "$state" = paused ] && icon='󰏤'
[ "$state" != stopped ] && msg=`mpc -f '[[%artist% — ]%title%]|[%file%]' | sed 'q'`
echo "$icon $msg"
