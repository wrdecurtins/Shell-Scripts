#!/bin/bash
# installs zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# https://unix.stackexchange.com/questions/136423/making-zsh-default-shell-without-root-access

if ! [ -f "$HOME/.bash_profile" ]; then
   touch "$HOME/.bash_profile"
fi

# https://unix.stackexchange.com/questions/136423/making-zsh-default-shell-without-root-access

echo '
# set zsh to the default shell

export SHELL=`which zsh`
[ -z "$ZSH_VERSION" ] && exec "$SHELL" -l' >> "$HOME/.bash_profile"

echo "Finished. You will need to reboot to see changes"
