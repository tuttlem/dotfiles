#!/bin/sh

# mouse cursor
xsetoot -cursor_name left_ptr &

# setup a simple composite mananger
xcompmgr -c &

# set the desktop background
sh ~/.fehbg &

# disable trackpad tap/scroll when typing (for 2 seconds)
syndaemon -t -k -i 2 &

exec xmonad
