#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing Basic Soft'

sudo apt update && sudo apt install git vim wget curl -y

curl https://github.com/peco/peco/releases/download/v0.2.0/peco_linux_amd64.tar.gz -o /tmp/peco.tar.gz
cd /tmp
tar -zxvf peco.tar.gz
dpkg -i *.deb

colorecho 'Finished Installing Basic Soft'
