#!/bin/sh

xsetoot -cursor_name left_ptr &
xcompmgr -c &
sh ~/.fehbg &

exec xmonad
