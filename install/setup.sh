#!/usr/bin/env bash

BLACK="\033[0;30m"
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
PURPLE="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "${RED}${1}${NOCOLOR}"
}

colorecho2() {
	echo -e "${GREEN}${1}${NOCOLOR}"
}

colorecho3() {
	echo -e "${PURPLE}${1}${NOCOLOR}"
}
colorecho '

██╗  ██╗ █████╗ ██╗  ██╗██████╗  █████╗ ██╗  ██╗
██║  ██║██╔══██╗██║ ██╔╝██╔══██╗██╔══██╗██║ ██╔╝
███████║███████║█████╔╝ ██████╔╝███████║█████╔╝ 
██╔══██║██╔══██║██╔═██╗ ██╔═══╝ ██╔══██║██╔═██╗ 
██║  ██║██║  ██║██║  ██╗██║     ██║  ██║██║  ██╗
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝
                                                
'
colorecho2 'Welcome to HAKPAK Setup'
colorecho2 'There are two options to install'
colorecho2 'Auto Mode - just installs everything'
colorecho2 'Manual Mode - you can choose which packages to install\n'

colorecho3 'Please select installation mode, choose 1 or 2 !\n'
	choices=("Auto" "Manual")
	select choice in "${choices[@]}"; do
		case $choice in
		Auto)

        # System
        bash system.sh

        # Enviroment
        bash python.sh
        bash go.sh

        # Zsh
        bash zsh.sh

        # Tmux
        bash tmux.sh

        # Wordlists
        bash wordlists.sh

        # Pentest
        bash pentest-soft.sh

        # Remote GUI
        bash remote-gui.sh
        break
        ;;

        Manual)
		
        echo -e "${Red}Open setup.sh and comment *.sh scripts))"
		break
        ;;
		esac
    done
