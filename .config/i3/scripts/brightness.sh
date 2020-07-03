#!/bin/sh

let a=$(cat /sys/class/backlight/intel_backlight/brightness)

if [[ $1 == "-i" ]]; then
	num=$(($a + $2))
elif [[ $1=="-d" ]]; then
	num=$(($a - $2))
else
	echo "Invalid Arg"
fi

if [[ $num -gt 120000 ]]; then
	num=120000
elif [[ $num -lt 100 ]]; then
	num=100
fi

echo $num > /sys/class/backlight/intel_backlight/brightness
