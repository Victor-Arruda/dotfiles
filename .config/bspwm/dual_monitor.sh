#!/bin/bash

# set up the two monitors for bspwm
# NOTE This is a simplistic approach because I already know the settings I
# want to apply.
external_monitor=$(xrandr --query | grep 'DisplayPort-2')
if [[ $external_monitor = *connected* ]]; then
    xrandr --output HDMI-A-0 --primary --mode 2560x1080 --rotate normal --output DisplayPort-2 --mode 1920x1080 --rotate normal --left-of HDMI-A-0
fi
