#!/bin/bash

if [ -z "$(cat ~/.config/waybar/scripts/target)" ]; then
  echo ~/.config/images/emotes/noelle-silly.png
  echo "* Noelle tells you to attack some server *"
else
  echo ~/.config/images/emotes/cat_popcorn.png
  echo "Pwn it!"
fi
