#!/bin/sh

xrdb merge ~/.Xresources 
xbacklight -set 10 &
# feh --bg-fill ~/Pictures/wall/gruv.png &
# set keyboard repeat delay / rate
xset r rate 200 45

# picom &

dunst &

#dash ~/.config/chadwm/scripts/bar.sh &
dwmblocks &

/usr/bin/clipmenud&
/usr/bin/easyeffects --gapplication-service &

gio mime x-scheme-handler/http qutebrowser.desktop
gio mime x-scheme-handler/https qutebrowser.desktop
picom -b --config /home/chadkouse/.config/picom.conf
/home/chadkouse/.scripts/tools/enabledvsync
/home/chadkouse/.scripts/tools/fix_mouse_scroll
xrandr --output DisplayPort-0 --auto # --right-of HDMI-A-0
#xrandr --output DisplayPort-1 --auto --mode 2560x1600
xrandr --output HDMI-A-0 --auto --right-of DisplayPort-0
/home/chadkouse/.scripts/tools/setbg

# bind keys
sxhkd &

while type chadwm >/dev/null; do chadwm && continue || break; done
