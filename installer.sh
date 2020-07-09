#!/bin/sh 

cd ~
[ -f .bashrc ] && mv .bashrc .bashrc.ini
[ -f .bash_logout ] && mv .bash_logout .bash_logout.ini
[ -f .profile ] && mv .profile .profile.ini
cd -
stow bash
stow tmux
stow vim
stow git
stow X
