#!/bin/sh

command -v stow >/dev/null 2>&1 || { echo "Install GNU Stow first"; exit 1; }

for i in bash tmux git perl vim; do
        command -v $i >/dev/null || echo "Please install $i"
done

mkdir -p $HOME/.dotfiles-backup

backup () {
	for FILE in "$@"
    do
        test ! -h $HOME/$FILE -a -e $HOME/$FILE && mv $HOME/$FILE $HOME/.dotfiles-backup/
    done
}

git submodule update --init --recursive

backup .xinitrc .xsession .xprofile .Xdefaults .Xresources;         stow --dotfiles 			    X
backup .bashrc .bash_aliases .bash_functions .profile .bash_logout; stow --dotfiles 			    bash
backup .tmux.conf;                                                  stow --dotfiles --no-folding 	tmux
backup .screenrc;                                                   stow --dotfiles 			    screen
                                                                    stow --dotfiles	--no-folding 	git
                                                                    stow --dotfiles 			    perl
backup .vimrc;                                                      stow --dotfiles 			    vim
mkdir -p $HOME/.vim/bundle
test ! -e $HOME/.vim/bundle/Vundle.vim && ln -s $HOME/.dotfiles/plugins/Vundle.vim $HOME/.vim/bundle/
test ! -e $HOME/.vim/colors && ln -s $HOME/.dotfiles/plugins/vim-colorschemes/colors $HOME/.vim/
vim +BundleInstall +qall
mkdir -p $HOME/.tmux/plugins
test ! -e $HOME/.tmux/plugins/tpm && ln -s $HOME/.dotfiles/plugins/tpm $HOME/.tmux/plugins/
