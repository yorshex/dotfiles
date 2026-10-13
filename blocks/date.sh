#!/bin/sh

yday=$(date +'%j')
amon=$(((yday-1)/14))
amday=$(((yday-1)%14))
[ "$yday" -le 364 ] &&
	amonl=$(echo "obase=16;65+$amon" | bc | xxd -r -p) ||
	amonl='+'
arv=$(printf "%c%02d" "$amonl" "$amday")

date +"%a, %b %d %H:%M, $arv"
