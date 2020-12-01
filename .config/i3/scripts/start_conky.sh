#!/bin/sh

killall -w conky
conky -c ~/.config/conky/conkyrc >> /tmp/conky.log
