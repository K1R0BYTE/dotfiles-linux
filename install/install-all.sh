#!/usr/bin/env bash

# Resolve DOTFILES_DIR
if [ -d "$HOME/.dotfiles" ]; then
    DOTFILES_DIR="$HOME/.dotfiles"
else
    echo "Unable to find dotfiles, exiting..."
    return
fi

# Source dotfiles
for DOTFILE in "$DOTFILES_DIR"/system/.*; do
    [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# System
bash system.sh

# Basic
bash basic-soft.sh

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
