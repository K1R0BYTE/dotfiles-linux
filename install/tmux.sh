#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing Basic Soft'

sudo apt install tmux xclip -y
rm -rf ${HOME}/.tmux*
git clone "https://github.com/tmux-plugins/tpm" ${HOME}/.tmux/plugins/tpm
ln -sv ${HOME}/.hakpak/configs/tmux/.tmux.conf ${HOME}/.tmux.conf
tmux source-file ${HOME}/.tmux.conf

colorecho 'Finished Installing Basic Soft'
