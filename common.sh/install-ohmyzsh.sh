#!/bin/bash
# installs ohmyzsh

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

echo "You will need to install zsh first"

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

# installs plugins

# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#how-to-install
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# https://github.com/marlonrichert/zsh-autocomplete?tab=readme-ov-file#installation--setup
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

/$HOME/Shell-Scripts/ubuntu/install-thefuck.sh


# set up .zshrc
pattern='source \$ZSH\/oh-my-zsh\.sh'
replacement='source \$HOME\/Shell-Scripts\/zshrcConfig'

sed -i "s/$pattern/$replacement\n$pattern/1" .zshrc

echo 'source "$HOME/Shell-Scripts/ADDTORC"' >> $HOME/.zshrc
