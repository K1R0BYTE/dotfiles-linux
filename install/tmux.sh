#!/usr/bin/env bash

sudo apt install tmux xclip -y
rm -rf ${HOME}/.tmux*
git clone "https://github.com/tmux-plugins/tpm" ${HOME}/.tmux/plugins/tpm
ln -sv ${HOME}/.dotfiles/tmux/.tmux.conf ${HOME}/.tmux.conf
tmux source-file ${HOME}/.tmux.conf
