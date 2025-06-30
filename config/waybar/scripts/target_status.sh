#!/bin/zsh

target=$(cat ~/.config/waybar/scripts/target)

if [ $target ]; then
	echo "$target\nA target is here!\nadquired"
else
	echo "Nothing here\nNo target specified!\nnothing"
fi
