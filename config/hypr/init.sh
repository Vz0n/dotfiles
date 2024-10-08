#!/bin/bash

eww daemon >&/dev/null
waybar &
gammastep -O 4500 &
hyprctl setcursor material_dark_cursors 24
swww query
if [[ $? -eq 0 ]]; then
	swww kill
fi
swww init
dunst &
export _JAVA_AWT_WM_NONREPARENTING=1
