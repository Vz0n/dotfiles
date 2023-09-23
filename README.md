# Vz0n's box

![Preview](img/preview.png)

This is my Arch Linux setup/rice.

It's based on some rices that i saw among the Linux ricing community, but the inspiration came mainly from [s4vitar's bspwm](https://github.com/yorkox0/autoBspwm) and [rxyhn's dotfiles](https://github.com/rxyhn/yuki). The main purpose for this rice was just hacking stuff but with the time it has became my main OS for programming and hacking at same time.

## Information

- OS: Arch Linux
- WM: [HyprLand](https://github.com/hyprwm/Hyprland)
- Bar: [Waybar](https://github.com/Alexays/Waybar)
- Locker: [swaylock](https://github.com/swaywm/swaylock)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- Shell: zsh (w/ powerlevel10k, oh-my-zsh)
- Note taker: Obsidian
- Screenshots: flameshot
- Launcher: [rofi](https://github.com/davatorium/rofi)
- GTK Themes: Sweet Dark (Windows), Bonny Dark (Icons), Material Dark (Cursor)
- Font: Fira Code (Nerd)

## Installation

### Environment 

As always, install packages:

```BASH
# Basic software
pacman -S kitty thunar thunar-volman thunar-archive-plugin gvfs engrampa hyprland swww zsh pavucontrol obsidian gammastep brightnessctl pocl dunst bat lsd gthumb git xdg-desktop-portal-hyprland xdg-desktop-portal nwg-look bpytop duf obsidian opendoas

# Some alternative software for Wayland 
paru -i waybar-hyprland flameshot-git rofi-lbonn-wayland
```

Download the GTK themes and use `nwg-look` to apply it, because `lxappearance` has no effect on wayland compositors. Don't worry as it's easy to set it like lxa as you can see below

![nwg-look](/img/nwg-look.png)

Clone this repo and save it wherever you like: 

`git clone https://github.com/Vz0n/dotfiles`

Now, copy the config files to your local directories:

```BASH
cp -r config ~/.config
# OPTIONAL: Custom scripts for OSINT
cp -r local ~/.local
```

Then just reload Hyprland and you should get the environment working.

### Terminal

Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and [powerlevel10k](https://github.com/romkatv/powerlevel10k), now just append in your `.zshrc` the contents from this repo's file.

### Extra

As you might have seen, this has some scripts and a waybar widget for OSINT purposes; those works using the SecurityTrails API so you will need an API key if you want them. Same applies for h8mail.

For the waybar widget just read the code and `.zshrc`.

*Suggestion: read documentations of the software used here before starting to edit stuff*
