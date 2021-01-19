#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

sudo apt install tmux xclip -y
rm -rf ${HOME}/.tmux*
git clone "https://github.com/tmux-plugins/tpm" ${HOME}/.tmux/plugins/tpm
ln -sv ${HOME}/.dotfiles/tmux/.tmux.conf ${HOME}/.tmux.conf
tmux source-file ${HOME}/.tmux.conf

colorecho 'Finished Installing Basic Soft'
