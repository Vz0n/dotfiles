#!/bin/bash

eww daemon >&/dev/null
hyprsunset -t 4500 &
hyprctl setcursor anya_cursor 24
swww query
if [[ ! $? -eq 0 ]]; then
  swww-daemon &
fi
mako &
