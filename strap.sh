#!/bin/bash
# This is just a silly script to automate my stuff, so i don't need to type too much in the 
# console to prepare my Hyprland on a vanilla Arch with just a console and an user. 

# Path of the program to escalate privileges when using pacman, change if it differs from yours.
SU_COMMAND="/usr/bin/sudo"

function terminate(){
   echo "Exiting..."
   return 1
}

function install(){
  # Naive way to check if it's root tho
  if [[ $HOME == "/root" ]]; then
    echo "Run this script as a normal user."
    return 1
  fi

  if [ ! -e $SU_COMMAND ]; then
    echo "The \$SU_COMMAND executable doesn't seems to exist on your system."
    return 1
  fi

  # Install main packages
  $SU_COMMAND pacman -S --needed --noconfirm base-devel which git kitty fastfetch rofi-wayland gvfs swww hyprland waybar hyprlock hypridle grim zsh pavucontrol obsidian ttf-firacode-nerd gammastep brightnessctl dunst bat lsd git xdg-desktop-portal-hyprland xdg-desktop-portal nwg-look bpytop duf obsidian

  helper=$(which yay || which paru) 

  if [ -z $helper ]; then
    echo "There's no AUR helper! Installing yay (will be deleted after setup)..."
    git clone https://aur.archlinux.org/yay-bin.git .tmp/
    cd .tmp/
    makepkg -si --noconfirm -c
    if [ $? -ne 0 ]; then
      echo "Something strange happened while building yay!"
      cd .. && rm -rf .tmp/
      return 1
    fi

    # Just go back in the directory tree
    cd .. && rm -rf .tmp/
    helper=$(which yay)
  fi

  $helper -S flameshot-git eww

  # Copy dot directories
  cp -r config ~/.config
  cp -r local ~/.local

  echo "Cleaning stuff..."
  rm -rf ~/.cache/yay/
  $SU_COMMAND pacman -R yay-bin yay-bin-debug

  echo "Installation of the dotfiles completed!"
  echo "To see the Hyprland, just go to your Desktop Manager login screen and"
  echo "select 'Hyprland' as session." 
}

trap terminate SIGINT
install

# Reset signal handler to it's normal value
trap SIGINT


