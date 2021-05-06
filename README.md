# Mitosys #

_"Cell division and replication for my dotfiles"_

## The place to find my dotfiles and migration strategies ##

The main branch is for dotfiles and items that remain the same across machines and installations.

This is stuff like `Xresources` or `zshrc`. Other things that are installation specific may be things like `.xsession` stuff or mpd stuff.

## How to use this repository ##

1. Clone this repo somewhere easily accessible (like ~)
2. Where config files are needed simply link to it like "ln -s ~/mitosys/file ~"
3. ???
4. Profit.

Future features:

+ config 'profiles' that layer on top of a base profile e.g.
  laptop/desktop/server

## Program stack ##

Below is a list of the software I use for my system and their applications.
Please note that this list is far from exhaustive and complete.

| Component         | Program             |
|-------------------|---------------------|
| Display manager   | xdm + xinit scripts |
| Window manager    | dwm                 |
| Terminal emulator | st                  |
| Shell             | zsh                 |
| Text editor\IDE   | vim                 |
| App launcher      | dmenu               |
| Music player      | mpd + ncmpcpp       |
| Video player      | mpv                 |
| File browser      | ranger              |
| Statusbar         | dwmblocks           |

Utility programs:

* xorg-xbacklight
* xorg-xbindkeys


## Config notes ###

### `st` ###

Patches to apply (in order):
+ xresources
+ anysize
+ scrollback

Other configs:

font sie 18 font inconsolata
