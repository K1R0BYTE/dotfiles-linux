#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing System Soft'

sudo apt install build-essential net-tools dnsutils isc-dhcp-server nfs-common cifs-utils -y

colorecho 'Finished Installing System Soft'

colorecho 'Starting Installing Basic Soft'

sudo apt update && sudo apt install git vim wget curl peco firefox-esr zip unzip p7zip-full guake apt-transport-https -y

colorecho 'Finished Installing Basic Soft'

colorecho 'Starting Configuring System'

sudo ln -sv ${HOME}/.hakpak/configs/wsl.conf /etc/wsl.conf

sudo mv /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak
sudo ln -sv ${HOME}/.hakpak/configs/dhcpd.conf /etc/dhcp/dhcpd.conf

# Install Tor
#echo "deb https://deb.torproject.org/torproject.org buster main" > /etc/apt/sources.list.d/torproject.list
#echo "deb-src https://deb.torproject.org/torproject.org buster main" >> /etc/apt/sources.list.d/torproject.list
#sudo curl https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --import
#gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
#sudo apt update
#sudo apt install tor deb.torproject.org-keyring -y

curl -L https://www.torproject.org/dist/torbrowser/10.0.10/tor-browser-linux64-10.0.10_en-US.tar.xz -o /tmp/tor.tar.xz
tar -xvf /tmp/tor.tar.xz -C /opt

colorecho 'Finished Configuring System'
