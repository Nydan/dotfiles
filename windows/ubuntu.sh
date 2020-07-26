#!/usr/bin/env bash
download_path=$HOME/Downloads

# download .deb package for docker
wget -P ${download_path} https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce_19.03.12~3-0~ubuntu-focal_amd64.deb
wget -P ${download_path} https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/docker-ce-cli_19.03.12~3-0~ubuntu-focal_amd64.deb
wget -P ${download_path} https://download.docker.com/linux/ubuntu/dists/focal/pool/stable/amd64/containerd.io_1.2.13-2_amd64.deb


# installing docker-cli and docker-ce
sudo dpkg -i Downloads/docker-ce-cli_19.03.12\~3-0\~ubuntu-focal_amd64.deb 
sudo dpkg -i Downloads/containerd.io_1.2.13-2_amd64.deb
sudo dpkg -i Downloads/docker-ce_19.03.12\~3-0\~ubuntu-focal_amd64.deb


# set docker to run without sudo
sudo usermod -aG docker $(whoami)


# installing zsh
sudo apt-get update
sudo apt upgrade
sudo apt install zsh
sudo apt-get install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# nano .zshrc
# ZSH_THEME="agnoster"
chsh -s /bin/zsh


# syntax highlight 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

# zsh auto completion
## This need manual edit on .zshrc file to add the plugin inside `plugin()`
## Example: `plugin(git zsh-autosuggestion)
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
