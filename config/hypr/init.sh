#!/bin/bash

waybar &
gammastep -O 4500 &
hyprpaper &
hyprctl setcursor material_dark_cursors 24
dunst &
gsettings set org.gnome.desktop.interface icon-theme "Bonny-Dark-Icons"
export GTK_THEME="Sweet-Dark"
export GTK_MODULES="canberra-gtk-module" 
export QT_STYLE_OVERRIDE="kvantum"
export _JAVA_AWT_WM_NONREPARENTING=1

