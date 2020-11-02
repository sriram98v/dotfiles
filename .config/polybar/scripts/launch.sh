#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main>>/tmp/polybar1.log 2>&1 &

externmon=$(xrandr --query | grep 'HDMI-1-0')
if [[ $externmon = *connected* ]]; then
    polybar -c ~/.config/polybar/config.ini mybar-sec >>/tmp/polybar2.log 2>&1 &
fi

