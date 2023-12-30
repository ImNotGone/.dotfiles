#! /bin/sh

# terminate runing instances
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ $(xrandr -q | grep 'DP-5 connected') ]]; then
	polybar bottom_external &
fi
polybar bottom &
