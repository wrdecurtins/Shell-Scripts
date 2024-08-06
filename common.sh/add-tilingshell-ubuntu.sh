#!/bin/bash
# Installs the tilingshell extension for ubuntu and opens the extensions window
# https://github.com/domferr/tilingshell

sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-shell-extension-manager

cd ~/Downloads
wget https://github.com/domferr/tilingshell/releases/latest/download/GNOME.42-44.tilingshell@ferrarodomenico.com.zip

unzip -d tilingshell@ferrarodomenico.com GNOME.42-44.tilingshell@ferrarodomenico.com.zip
cp -r tilingshell@ferrarodomenico.com ~/.local/share/gnome-shell/extensions/
rm -rf tilingshell@ferrarodomenico.com

killall -SIGQUIT gnome-shell

/usr/bin/gnome-extensions-app
