#!/bin/sh

yday=`date +'%j'`
amon=`echo "($yday-1)/14" | bc`
amday=`echo "($yday-1)%14" | bc`
[ $yday -lt 365 ] &&
	amonl=`echo "obase=16;65+$amon" | bc | xxd -r -p` ||
	amonl=`+`
arv=`printf "%c%02d" $amonl $amday`

date +"%a, %b %d %H:%M, $arv"
