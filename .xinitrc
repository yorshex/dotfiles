#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

while :; do
	dwm || break
done
