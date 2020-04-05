#!/bin/sh
set -xe
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"


brew install fish fzf tmux p7zip mosh python node yarn neovim reattach-to-user-namespace tldr
defaults write -g ApplePressAndHoldEnabled -bool false


# https://opensource.com/article/19/4/gpg-subkeys-ssh
echo enable-ssh-support >> ~/.gnupg/gpg-agent.conf
echo A2E90B4FC1554B467A548A76F2A5521FE57F97C3 >> ~/.gnupg/sshcontrol

# Doom Emacs
# https://github.com/hlissner/doom-emacs/blob/develop/docs/getting_started.org#on-macos
brew tap d12frosted/emacs-plus
brew install emacs-plus git ripgrep coreutils fd
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
