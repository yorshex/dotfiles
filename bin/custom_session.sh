#!/bin/sh

autorun() {
	pgrep -x "$1" > /dev/null || "$@" &
}

start_dwm() {
	autorun dwmblocks
	export _JAVA_AWT_WM_NONREPARENTING=1
	while :; do
		ssh-agent dwm || break
	done
}

start_bspwm() {
	export _JAVA_AWT_WM_NONREPARENTING=1
	ssh-agent bspwm
}

setxkbmap -layout us,ru -option grp:alt_shift_toggle -option caps:ctrl_modifier
xset r rate 200 30

mate-polkit &

[ -f ~/.fehbg ] && ~/.fehbg || hsetroot -solid "#2e3440" &
autorun easyeffects --gapplication-service
autorun xcompmgr
autorun dunst
autorun flameshot
autorun xautolock -time 10 -locker slock
autorun otd-daemon
autorun pcmanfm -d
autorun qbittorrent

start_bspwm
