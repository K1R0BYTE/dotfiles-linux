#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing Enviroment Soft'

# Python3 (pip + venv)
sudo apt install python3-pip -y
sudo python3 -m pip install --upgrade pip

# Libs
sudo python3 -m pip install requests

colorecho 'Finished Installing Enviroment Soft'
