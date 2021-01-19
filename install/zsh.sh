#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

ZSH="${HOME}/.oh-my-zsh"
ZSH_CUSTOM="$ZSH/custom"

sudo apt install zsh -y && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
git clone https://github.com/jimeh/zsh-peco-history.git ${ZSH_CUSTOM}/plugins/zsh-peco-history

rm ${HOME}/.zshrc
ln -sv ${HOME}/.dotfiles/zsh/.zshrc ${HOME}/.zshrc
chsh -s `which zsh`

colorecho 'Finished Installing ZSH'
colorecho 'Re-login'
