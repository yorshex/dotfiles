for m in $(polybar --list-monitors | cut -d: -f1); do
	rmods="mpd volume layout date"
	[ -d /sys/class/power_supply/BAT0 ] && rmods="$rmods battery"
	polybar --list-monitors | grep "$m" | grep '(primary)' && rmods="$rmods systray"
	MONITOR="$m" RMODULES="$rmods" polybar first &
done
