#!/usr/bin/env bash

apt update && apt install git vim wget -y

# Sublime Text

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
apt install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt update && apt install sublime-text -y