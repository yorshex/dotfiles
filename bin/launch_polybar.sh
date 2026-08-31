for mspec in $(polybar --list-monitors); do
	m="$(echo "$mspec" | cut -d: -f1)"
	[ -f /sys/class/power_supply/BAT0 ] && rmods="$rmods battery"
	echo "$mspec" | grep '(primary)' && rmods="$rmods systray"
	MONITOR="$m" RMODULES="$rmods" polybar --reload first &
done
