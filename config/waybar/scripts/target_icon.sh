#!/bin/bash

if [ -z "$(cat ~/.config/waybar/scripts/target)" ]; then
  echo ~/.config/images/emotes/02_derp.png
  echo "Nothing here dude"
else
  echo ~/.config/images/emotes/cat_popcorn.png
  echo "Pwn it!"
fi
