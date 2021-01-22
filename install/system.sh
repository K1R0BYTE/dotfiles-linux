#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing System Soft'

sudo apt install build-essential net-tools -y

colorecho 'Finished Installing System Soft'

colorecho 'Starting Installing Basic Soft'

sudo apt update && sudo apt install git vim wget curl peco firefox-esr zip unzip p7zip-full -y

colorecho 'Finished Installing Basic Soft'

colorecho 'Starting Configuring System'

sudo chown ${USER}:${USER} /opt
sudo ln -sv ${HOME}/.hakpak/configs/wsl.conf /etc/wsl.conf

colorecho 'Finished Configuring System'
