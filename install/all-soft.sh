#!/usr/bin/env bash


# OS Soft
bash basic-soft.sh

# Env Soft
bash python.sh

# Zsh
bash zsh.sh

# Tmux
bash tmux.sh

ln -sv ${HOME}/.dotfiles/.configs/.dircolors ${HOME}/.dircolors
