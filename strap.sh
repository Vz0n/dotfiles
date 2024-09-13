#!/bin/bash

function terminate(){
   echo "Exiting..."
   exit 1
}

trap terminate SIGINT

# Silly way to check if it's root tho
if [[ $HOME == "/root" ]]; then
  echo "Run this script as a normal user."
  exit 1
fi

stat /usr/bin/sudo 2>/dev/null

if [ $? -eq 1 ]; then
   echo "Install and configure sudo or one alternative to use the script."
   exit 1
fi

# Install main packages
sudo pacman -S which git kitty fastfetch rofi-wayland gvfs swww hyprland waybar hyprlock hypridle grim zsh pavucontrol obsidian gammastep brightnessctl dunst bat lsd git xdg-desktop-portal-hyprland xdg-desktop-portal nwg-look bpytop duf obsidian

helper=$(which yay || which paru)

if [ -z $helper ]; then
   echo "There's no AUR helper! Installing yay (will be deleted after setup)..."
   git clone https://aur.archlinux.org/yay-bin.git .tmp/
   cd .tmp/
   makepkg -si
   if [ $? -eq 1 ];
     echo "Something strange happened while building the AUR helper! check console"
     exit 1
   fi

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

# Reset signal handler to it's normal value
trap SIGINT


