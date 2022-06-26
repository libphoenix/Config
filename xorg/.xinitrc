#!/bin/sh

# dwm status 
#DWMStatusBar
dwmblocks &

# Notification service 
dunst &

# Compositor 
picom -f &

# Wallpaper 
nitrogen --restore &

# stop screen form sleeping 
xset -dpms
xset s off

# Execute DWM
exec dwm
