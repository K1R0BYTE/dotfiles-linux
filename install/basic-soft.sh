#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing Basic Soft'

sudo apt update && sudo apt install git vim wget curl -y

colorecho 'Finished Installing Basic Soft'
