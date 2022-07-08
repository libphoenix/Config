#!/bin/sh

# dwm status 
#DWMStatusBar
dwmblocks &

# Notification service 
dunst &

# remove mouse cursor when its not in use
unclutter &

# Compositor 
picom -f &

# Wallpaper 
nitrogen --restore &

# stop screen form sleeping 
xset -dpms
xset s off

# Execute DWM
exec dwm
