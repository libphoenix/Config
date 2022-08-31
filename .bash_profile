# adding scripts to path 
export PATH=${PATH}:/home/deepakpatel/.config/scripts:/home/deepakpatel/.cargo/bin
. "$HOME/.cargo/env"

# starting wm 
#startx
[[ $XDG_VTNR -le 2 ]] && tbsm
