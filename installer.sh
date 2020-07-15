#!/bin/sh

command -v stow >/dev/null 2>&1 || { echo "Install GNU Stow first"; exit 1; }

git submodule init
git submodule update

test -f $HOME/.bashrc && mv $HOME/.bashrc $HOME/.bashrc.ini
test -f $HOME/.bash_aliases && mv $HOME/.bash_aliases $HOME/.bash_aliases.ini
test -f $HOME/.bash_functions && mv $HOME/.bash_functions $HOME/.bash_functions.ini
test -f $HOME/.profile && mv $HOME/.profile $HOME/.profile.ini
test -f $HOME/.bash_logout && mv $HOME/.bash_logout $HOME/.bash_logout.ini
stow bash

stow git

stow perl

[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.ini
stow tmux

stow vim
vim +BundleInstall +qall
test -d $HOME/.vim/colors || ln -s $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors
