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

mkdir -p $HOME/.config/nvim
cd $HOME/.config/nvim
ln -sfn (rel init.vim)
mkdir -p $HOME/.config/ideavim
cd $HOME/.config/ideavim
ln -sfn (rel ideavimrc)
cd $HOME/.config
ln -sfn (rel omf)
