# Vz0n's box

![Terminal](img/preview.png)

This is the Arch Linux configuration where happens interesting things...

You're free of cloning and use this config on your installation.

## Components

|  |  |
| :----: | :----: 
| WM   |  OpenBox  
| WM Theme | Kaunas 
| Terminal | Kitty 
| Shell | zsh  
| Desktop | polybar, nitrogen 
| Compositor | Picom 
| GTK Theme | Sweet Dark
| GTK Icons | Bonny Dark Icons
| Launcher | rofi
| Editors | Geany, VSCode, Neovim
| Files | Thunar, Engrampa
| Browser | Brave
| Notes | Obsidian


## To-do list

- [-] Fix thunar bugged "Open with" with terminal applications like Neovim
- [-] Make more decorations to the PolyBar
- [-] Get fun with Arch Linux 

## Installation

Install packages:<br>
`pacman -S rofi openbox kitty thunar engrampa polybar nitrogen picom zsh ttf-nerdfonts-2048-em geany neovim xorg xorg-server`<br>
`paru -i vscode nerd-fonts-roboto-mono`

Clone this repo:

`git clone https://github.com/Vz0n/dotfiles`

Copy config files:

`cp .config ~/.config`<br>
`cp .zshrc ~/.zshrc`