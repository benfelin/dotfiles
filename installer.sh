#!/bin/sh

command -v stow >/dev/null 2>&1 || { echo "Install GNU Stow first"; exit 1; }

git submodule init
git submodule update

test ! -h $HOME/.bashrc && mv $HOME/.bashrc $HOME/.bashrc.ini
test ! -h $HOME/.bash_aliases && mv $HOME/.bash_aliases $HOME/.bash_aliases.ini
test ! -h $HOME/.bash_functions && mv $HOME/.bash_functions $HOME/.bash_functions.ini
test ! -h $HOME/.profile && mv $HOME/.profile $HOME/.profile.ini
test ! -h $HOME/.bash_logout && mv $HOME/.bash_logout $HOME/.bash_logout.ini
stow bash

stow git

stow perl

[ ! -h $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.ini
stow tmux

stow vim
vim +BundleInstall +qall
test -d $HOME/.vim/colors || ln -s $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors

test ! -h $HOME/.xinitrc && mv $HOME/.xinitrc $HOME/.xinitrc.ini
test ! -h $HOME/.xsession && mv $HOME/.xsession $HOME/.xsession.ini
test ! -h $HOME/.xprofile && mv $HOME/.xprofile $HOME/.xprofile.ini
test ! -h $HOME/.Xdefaults && mv $HOME/.Xdefaults $HOME/.Xdefaults.ini
test ! -h $HOME/.Xresources && mv $HOME/.Xresources $HOME/.Xresources.ini
stow X
