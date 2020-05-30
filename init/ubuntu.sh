#!/bin/sh
set -xe

locale-gen zh_CN.UTF-8
locale-gen en_US.UTF-8
timedatectl set-timezone Asia/Shanghai
apt-get update
apt-get -y install build-essential zsh mosh htop ntp vim neovim git tmux fish tldr
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

