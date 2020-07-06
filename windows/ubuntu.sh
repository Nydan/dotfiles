#!/usr/bin/env bash

# install fish shell
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

# set fish as the default shell
fish=$(which fish)
sh -s ${fish}
