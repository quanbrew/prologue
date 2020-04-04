#!/bin/sh
set -xe

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install fish fzf tmux p7zip mosh python node yarn neovim reattach-to-user-namespace tldr
defaults write -g ApplePressAndHoldEnabled -bool false

# https://opensource.com/article/19/4/gpg-subkeys-ssh
echo enable-ssh-support >> ~/.gnupg/gpg-agent.conf
echo A2E90B4FC1554B467A548A76F2A5521FE57F97C3 >> ~/.gnupg/sshcontrol
