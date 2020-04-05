#!/usr/bin/env fish

set DIR (realpath (dirname (status --current-filename)))
function rel
    set current (realpath .)
    set p $DIR/$argv[1]
    # https://stackoverflow.com/a/7305217
    python -c "import os.path; print os.path.relpath('$p', '$current')"
end

cd $HOME
ln -sfn (rel profile.sh) .zprofile
ln -sfn (rel profile.sh) .profile
ln -sfn (rel .gitconfig)
ln -sfn (rel .tmux.conf.local)
ln -sfn (rel .tmux/.tmux.conf)
ln -sfn (rel ideavimrc.vim) .ideavimrc

mkdir -p $HOME/.config/nvim
cd $HOME/.config/nvim
ln -sfn (rel init.vim)
cd $HOME/.config
ln -sfn (rel omf)
