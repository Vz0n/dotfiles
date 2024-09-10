# Vz0n's box

![Preview](img/preview.png)

This is my Arch Linux installation's dotfiles.

It's based on some rices that i saw among the Linux ricing community, but the inspiration came mainly from [s4vitar's bspwm](https://github.com/yorkox0/autoBspwm) and [rxyhn's dotfiles](https://github.com/rxyhn/yuki). The main purpose for this rice was just hacking and playing around, and with the time it has became my main OS for my stuff.

## Information

- OS: Arch Linux
- WM: [HyprLand](https://github.com/hyprwm/Hyprland)
- Bar: [Waybar](https://github.com/Alexays/Waybar)
- Locker: Hyprland ones (hyprlock/hypridle)
- Terminal: [kitty](https://github.com/kovidgoyal/kitty) and zsh as shell (with oh-my-zsh).
- Notes: Obsidian
- Screenshots: flameshot
- Launcher: [rofi](https://github.com/davatorium/rofi)
- Fonts: Fira Code, Hack (Nerd)
- Widgets: eww

## Installation

Clone this repo and run the script `strap.sh`. It will install all the stuff needed for the environment to work and setup config files.

Note that you will need to install and config the zsh/GTK themes separately, as this just provides the initial config for Hyprland. 

### My themes and terminal

I use powerlevel10k as default terminal theme, Sweet Dark + Bonny Dark Icons for GTK and the Material Dark Cursor, just in case that you want to know (surely you actually don't want but uwu)

### Extra

As you might have seen, this has some scripts and a waybar widget for hacking/research purposes; those works using the SecurityTrails API so you will need to put an API key in the `~/.api_tokens` file. 

For the waybar widget just read the code and `.zshrc`.

*Suggestion: read documentations of the software used here before starting to edit stuff*