#!/bin/bash
# https://linuxhint.com/install-vs-code-manjaro/

yes | sudo pacman -S --needed git base-devel
cd ~
git clone https://aur.archlinux.org/visual-studio-code-bin.git
cd visual-studio-code-bin
makepkg -si --no-confirm
