# Vz0n's box

![Preview](img/preview.png)

This is the Arch Linux configuration where happens interesting things...

You're free of cloning and use this config on your installation.

## Information

Some basic information about the setup

- OS: Arch Linux
- Editor: VSCode/Neovim
- WM: [OpenBox](https://github.com/danakj/openbox)
- Bar: [polybar](https://github.com/polybar/polybar)
- Compositor: [picom](https://github.com/yshui/picom)
- File explorer: thunar (with engrampa)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- Shell: zsh
- Desktop: nitrogen
- Screenshots: flameshot
- Launcher: [rofi](https://github.com/davatorium/rofi)

## Installation

Install packages:
```BASH
pacman -S rofi openbox kitty thunar engrampa polybar nitrogen picom zsh ttf-nerdfonts-2048-em neovim xorg xorg-server flameshot pavucontrol 
paru -i visual-studio-code-bin nerd-fonts-roboto-mono
```

Clone this repo:

`git clone https://github.com/Vz0n/dotfiles`

Copy config and theme files:

```BASH
cp -r .config ~/.config
cp .zshrc ~/.zshrc
cp -r .themes ~/.themes
```