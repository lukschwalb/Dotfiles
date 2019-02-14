#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi



feh --bg-scale --randomize --no-fehbg ~/.wallpapers/* 
xcompmgr &
devilspie -a &
exec i3

