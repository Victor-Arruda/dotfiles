#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config.ini main-monitor &

external_monitor=$(xrandr --query | grep 'DisplayPort-2')
if [[ $external_monitor = *connected* ]]; then
    polybar -c ~/.config/polybar/config.ini secondary-monitor &
fi
