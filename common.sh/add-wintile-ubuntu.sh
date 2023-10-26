#!/bin/bash
# Installs the wintile extension for ubuntu and opens the extensions window
# https://github.com/fmstrat/wintile

sudo apt install -y gnome-shell-extensions
sudo apt install -y gnome-shell-extension-manager

git clone https://github.com/Fmstrat/wintile.git

cd wintile
./build.sh
unzip -d wintile@nowsci.com wintile@nowsci.com.zip
cp -r wintile@nowsci.com ~/.local/share/gnome-shell/extensions/
cd ..
rm -rf wintile

killall -3 gnome-shell

/usr/bin/gnome-extensions-app --gapplication-service
