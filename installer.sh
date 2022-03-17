#!/bin/sh

command -v stow >/dev/null 2>&1 || { echo "Install GNU Stow first"; exit 1; }

for i in bash tmux git perl vim; do
        command -v $i >/dev/null || echo "Please install $i"
done

backup () {
	for FILE in "$@"
    do
        test -e $HOME/$FILE -a ! -h $HOME/$FILE  && mv $HOME/$FILE $HOME/${FILE}.ini
    done
}

git submodule update --init --recursive

backup .xinitrc .xsession .xprofile .Xdefaults .Xresources;         stow --dotfiles X
backup .bashrc .bash_aliases .bash_functions .profile .bash_logout; stow --dotfiles bash
backup .tmux.conf;                                                  stow --dotfiles tmux
backup .screenrc;                                                   stow --dotfiles screen
                                                                    stow git
                                                                    stow --dotfiles perl
backup .vimrc;                                                      stow --dotfiles vim
vim +BundleInstall +qall
test -d $HOME/.vim/colors || ln -s $HOME/.vim/bundle/vim-colorschemes/colors $HOME/.vim/colors
