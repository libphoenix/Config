#!/bin/sh

#DWMStatusBar
dwmblocks &

# Notification service 
dunst &

# remove mouse cursor when its not in use
unclutter &

xset r rate 200 50 &

# Wallpaper 
nitrogen --restore &

# Execute DWM
exec dwm
