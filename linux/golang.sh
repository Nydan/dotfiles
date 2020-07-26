#!/usr/bin/env bash
download_path=$HOME/Downloads

# installing golang
mkdir -P ${download_path}
wget -P ${download_path} https://golang.org/dl/go1.14.4.linux-amd64.tar.gz
sudo tar -C /usr/local/ -xzf go1.14.4.linux-amd64.tar.gz

# set PATH and GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
