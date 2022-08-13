#!/bin/sh

setxkbmap -option ctrl:nocaps
xset r rate 200 50 &
exec bspwm
