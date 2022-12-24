# Vz0n's box

![Preview](img/preview.png)

This is the Arch Linux configuration where happens interesting things...

You're free of cloning and use this config on your installation.

## Information

Some basic information about the setup

- OS: Arch Linux
- Editor: VSCode/Neovim (w/ nvchad)
- WM: [OpenBox](https://github.com/danakj/openbox)
- Bar: [polybar](https://github.com/polybar/polybar)
- Compositor: [picom](https://github.com/yshui/picom)
- File explorer: thunar (with engrampa)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- Shell: zsh
- Desktop: nitrogen
- Screenshots: flameshot
- Launcher: [rofi](https://github.com/davatorium/rofi)
- GTK Themes: Sweet Dark (Windows), Bonny Dark (Icons), Material Dark (Cursor)

## Installation

Install packages:
```BASH
pacman -S rofi openbox kitty thunar thunar-volman thunar-archive-plugin gvfs engrampa polybar nitrogen picom zsh neovim xorg xorg-server flameshot pavucontrol obsidian libreoffice redshift brightnessctl pocl firefox vlc dunst bat exo gthumb lxappearance obs-studio discord git tmux bpytop

#Use paru or another AUR helper
paru -i visual-studio-code-bin nerd-fonts-roboto-mono 
```

Clone this repo: 

`git clone https://github.com/Vz0n/dotfiles`

Copy config and theme files:

```BASH
cp -r config ~/.config
cp .zshrc ~/.zshrc
cp -r themes ~/.themes

#Do this after installing nvchad
cp neovim/lspconfig.lua ~/.config/nvim/lua/plugins/configs/lspconfig.lua 
```
