#!/bin/sh
if amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
then
	dunstify -i ~/.config/i3/scripts/icons/volume-mute.png -r 2593 -u normal "Muted"
else
volume=$(amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1)
dunstify -i ~/.config/i3/scripts/icons/volume.png -r 2593 -u normal "$volume%" "" 
fi
