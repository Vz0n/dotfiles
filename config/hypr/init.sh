#!/bin/bash

eww daemon >&/dev/null
gammastep -O 4500 &
hyprctl setcursor anya_cursor 24
swww query
if [[ $? -eq 0 ]]; then
  swww kill
fi
swww-daemon &
dunst &
