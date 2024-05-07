# Vz0n's box

![Preview](img/preview.png)

This is my Arch Linux config/setup.

It's based on some rices that i saw among the Linux ricing community, but the inspiration came mainly from [s4vitar's bspwm](https://github.com/yorkox0/autoBspwm) and [rxyhn's dotfiles](https://github.com/rxyhn/yuki). The main purpose for this rice was just hacking stuff but with the time it has became my main OS for my stuff.

## Information

- OS: Arch Linux
- WM: [HyprLand](https://github.com/hyprwm/Hyprland)
- Bar: [Waybar](https://github.com/Alexays/Waybar)
- Locker: Hyprland ones (hyprlock/hypridle)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- Shell: zsh (w/ powerlevel10k, oh-my-zsh)
- Notes: Obsidian
- Screenshots: flameshot
- Launcher: [rofi](https://github.com/davatorium/rofi)
- GTK Themes: Sweet Dark (Windows), Bonny Dark (Icons), Material Dark (Cursor)
- Fonts: Fira Code, Hack (Nerd)
- Extra: eww

## Installation

### Environment 

As always, install packages:

```BASH
# Basic software available on the default repos
pacman -S kitty thunar thunar-volman thunar-archive-plugin gvfs engrampa hyprland hyprlock hypridle grim zsh pavucontrol obsidian gammastep brightnessctl pocl dunst bat lsd gthumb git xdg-desktop-portal-hyprland xdg-desktop-portal nwg-look bpytop duf obsidian opendoas

# Software from AUR (Using yay as helper)
yay -S waybar-hyprland flameshot-git rofi-lbonn-wayland swww eww
```

Download the GTK themes and use `nwg-look` to apply it, because `lxappearance` has no effect on wayland compositors. Don't worry as it's easy to set it like lxa as you can see below

![nwg-look](/img/nwg-look.png)

Clone this repo and save it wherever you like: 

`git clone https://github.com/Vz0n/dotfiles`

Now, copy the config files to your local directories:

```BASH
cp -r config ~/.config
# OPTIONAL: Custom scripts for OSINT stuff
cp -r local ~/.local
```

Then just reload Hyprland and you should get the environment working.

### Terminal

Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) and [powerlevel10k](https://github.com/romkatv/powerlevel10k), now just append in your `.zshrc` the contents from this repo's file.

### Extra

As you might have seen, this has some scripts and a waybar widget for OSINT purposes; those works using the SecurityTrails API so you will need an API key in the `~/.api_tokens` file.

For the waybar widget just read the code and `.zshrc`.

*Suggestion: read documentations of the software used here before starting to edit stuff*

## Todo

- Maybe add something to auto install, like an Ansible playbook maybe