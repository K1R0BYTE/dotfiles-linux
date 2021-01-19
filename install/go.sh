#!/usr/bin/env bash

RED="\033[1;31m"
NOCOLOR="\033[0m"

colorecho() {
	echo -e "[*] ${RED}${1}${NOCOLOR}"
}

colorecho 'Starting Installing GoLang Soft'

curl https://dl.google.com/go/go1.15.6.linux-amd64.tar.gz -o /tmp/go.tar.gz
sudo tar -C /usr/local -xzf /tmp/go.tar.gz

export GO111MODULE=on
export GOPATH="/opt/go"
export PATH="$PATH:/usr/local/go/bin"
export PATH=$PATH:$(go env GOPATH)/bin

colorecho 'Finished Installing GoLang Soft'
