#!/bin/bash
# installs openshot
# https://www.openshot.org/ppa/

sudo add-apt-repository -y ppa:openshot.developers/ppa
sudo apt update
sudo apt install -y openshot-qt python3-openshot
