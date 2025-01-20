#!/bin/sh

[ -f ~/.fehbg ] && ~/.fehbg || hsetroot -solid "#21252b" &
easyeffects --gapplication-service &
xcompmgr &
dwmblocks &
dunst &
flameshot &
xautolock -time 10 -locker slock &
sxhkd &

while :; do
	ssh-agent dwm || break
done
