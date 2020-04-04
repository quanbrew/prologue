#!/usr/bin/env fish

set DIR (realpath (dirname (status --current-filename)))
cd $HOME
ln -sfn $DIR/profile.sh .zprofile
ln -sfn $DIR/profile.sh .profile
ln -sfn $DIR/.gitconfig
mkdir -p .config/nvim
ln -sfn $DIR/init.vim .config/nvim/init.vim
ln -sfn $DIR/.tmux.conf.local
ln -sfn $DIR/.tmux/.tmux.conf
ln -sfn $DIR/omf .config/
