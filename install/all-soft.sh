#!/usr/bin/env bash


# OS
bash basic-soft.sh

# Enviroment
bash python.sh
bash go.sh

# Zsh
bash zsh.sh

# Tmux
bash tmux.sh

ln -sv ${HOME}/.dotfiles/configs/.dircolors ${HOME}/.dircolors

# Pentest
bash pentest.sh
