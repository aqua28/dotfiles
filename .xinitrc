#!/bin/sh
#xset s off
#xset -dpms
#xset s noblank


dunst &
mousefix &
xcompmgr &
xautolock -time 3 -locker slock &
dwmblocks &
setbg &

# loop
while true; do
	dwm >/dev/null 2>&1
done

# dwm
exec dwm
