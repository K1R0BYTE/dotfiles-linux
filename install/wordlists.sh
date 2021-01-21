#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing Wordlists'

sudo git clone "https://github.com/danielmiessler/SecLists.git" /opt/seclists

colorecho 'Finished Installing Wordlists'
