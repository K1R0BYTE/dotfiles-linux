#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing System Soft'

#sudo apt update
#sudo apt install snapd -y
#sudo snap install core

colorecho 'Finished Installing System Soft'

colorecho 'Starting Configuring System'

sudo chown ${USER}:${USER} /opt
sudo ln -sv ${HOME}/.dotfiles/configs/wsl.conf /etc/wsl.conf

colorecho 'Finished Configuring System'
