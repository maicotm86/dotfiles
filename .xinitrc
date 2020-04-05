#!/bin/sh

# xprofile is used to start some applications
[ -f ~/.xprofile ] && . ~/.xprofile


# dwmstatus
#dwmstatus 2>&1 >/dev/null &

# Status bar
while true; do
	xsetroot -name "$(date +"%A %d %b de %Y ⏰ %R" )";
	sleep 1m;
done &

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
	 [ -x "$f" ] && . "$f"
	done
	unset f
fi

# Windows Manager
exec dwm
