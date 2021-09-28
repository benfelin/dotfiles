#!/bin/sh

command -v stow >/dev/null 2>&1 || { echo "Install GNU Stow first"; exit 1; }

backup () {
	for FILE in "$@"
    do
        test -e $HOME/$FILE -a ! -h $HOME/$FILE  && mv $HOME/$FILE $HOME/${FILE}.ini
    done
}

git submodule init
git submodule update

backup .xinitrc .xsession .xprofile .Xdefaults .Xresources;         stow X
backup .bashrc .bash_aliases .bash_functions .profile .bash_logout; stow bash
backup .tmux.conf;                                                  stow tmux
                                                                    stow git
                                                                    stow perl
backup .vimrc
stow vim
vim +BundleInstall +qall
test -d $HOME/.vim/colors || ln -s $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors
