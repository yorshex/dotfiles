#!/bin/sh

[ -f ~/.xprofile ] && . ~/.xprofile

while :; do
    ssh-agent dwm || break
done
