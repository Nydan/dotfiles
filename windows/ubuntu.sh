#!/usr/bin/env bash

# install fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

# set fish as the default shell
fish=$(which fish)
sh -s ${fish}

# installing golang
download_path=$HOME/Downloads
mkdir -P ${download_path}
wget -P ${download_path} https://golang.org/dl/go1.14.4.linux-amd64.tar.gz
sudo tar -C /usr/local/ -xzf go1.14.4.linux-amd64.tar.gz

# set export go for fish shell
set -x PATH $PATH /usr/local/go/bin/
