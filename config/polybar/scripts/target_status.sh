#!/bin/zsh

target=$(cat /home/vzon/.config/polybar/scripts/target)

if [ $target ]; then
	echo "${F#3ecb98}%{F#ff0000} $target%{u-}"
else
	echo "${F##3ecb98}%{u-}%{F#ffffff} Nothing here"
fi
