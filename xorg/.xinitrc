#!/bin/sh

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

# Execute DWM
exec dwm
