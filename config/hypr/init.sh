#!/bin/bash

eww daemon >&/dev/null
hyprsunset -t 4500 &
hyprctl setcursor Kuromi-cursor 24
awww query
if [[ ! $? -eq 0 ]]; then
  awww-daemon &
fi
mako &
