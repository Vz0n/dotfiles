#!/bin/bash

if [ $USER != "root" ]; then
  echo "Run this script as root."
  exit 1
fi


# Install main packages
pacman -S kitty rofi-wayland thunar thunar-volman thunar-archive-plugin gvfs engrampa swww hyprland waybar hyprlock hypridle grim zsh pavucontrol obsidian gammastep brightnessctl pocl dunst bat lsd gthumb git xdg-desktop-portal-hyprland xdg-desktop-portal nwg-look bpytop duf obsidian opendoas

helper=$(which yay || which paru)

if [ -z $helper ]; then
   echo "There's no AUR helper! Installing yay (will be deleted after setup)..."
   git clone https://aur.archlinux.org/yay-bin.git .tmp/
   cd .tmp/
   makepkg -si
   # Just go back in the directory tree
   cd ..
   rm -rf .tmp/
fi

$helper -S flameshot-git eww

# Copy directories
cp -r config ~/.config
printf "Want to use OSINT scripts? (yes/no): "
read ans

if [[ $ans =~ "^y" ]]; then
   cp -r local ~/.local
fi

echo "Cleaning stuff..."
rm -rf ~/.cache/yay/
pacman -R yay-bin

echo "Installation of the basic stuff completed!"
echo "This config doesn't come with a GTK and QT theme, so you will need to install one."
echo "To see the Hyprland, just go to your Desktop Manager login screen and"
echo "select 'Hyprland' as session." 




