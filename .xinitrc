#!/bin/sh

xrandr --output eDP-1 --mode 1366x768  --pos 0x900
xrandr --output HDMI-2 --mode 1600x900 --pos 0x0 --primary
xrandr --output DP-1 --mode 1024x768 --pos 1600x0




./scripts/status.sh &

xinput --set-prop "SynPS/2 Synaptics Touchpad" 330 0
xinput --set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" -0.5
setxkbmap -layout us,ru,lri_better -variant ,phonetic,phonetic -option grp:win_space_toggle #,caps:swapescape

picom --backend xrender &
feh --bg-scale pix/backgrounds/cool-arch-wallpaper.png
exec dwm

