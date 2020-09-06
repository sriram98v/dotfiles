#!/usr/bin/env sh

externmon=$(xrandr --query | grep 'HDMI-1-0')
feh --bg-scale /home/kuuhaku/Pictures/wallpaper.png

if [[ $externmon = *connected* ]]; then
    xrandr --output HDMI-1-0 --auto --right-of eDP-1 --mode 1920x1080
    feh --bg-scale /home/kuuhaku/Pictures/wallpaper.png /home/kuuhaku/Pictures/wallpaper.png
fi
