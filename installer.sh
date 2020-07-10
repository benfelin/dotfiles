#!/bin/sh 

git submodule init
git submodule update

cd $HOME
[ -f .bashrc ] && mv .bashrc .bashrc.ini
[ -f .bash_logout ] && mv .bash_logout .bash_logout.ini
[ -f .profile ] && mv .profile .profile.ini
cd -

stow bash
stow tmux
stow git
stow X

stow vim
vim +BundleInstall +qall
ln -s $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors 
