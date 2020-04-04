set DIR (python3 (dirname (status --current-filename))/path.py)
cd $HOME
ln -sfn $DIR/profile.sh .zprofile
ln -sfn $DIR/profile.sh .profile
mkdir -p .config/nvim
ln -sfn $DIR/init.vim .config/nvim/init.vim
ln -sfn $DIR/.tmux.conf.local
ln -sfn $DIR/.tmux/.tmux.conf
ln -sfn $DIR/omf .config/
