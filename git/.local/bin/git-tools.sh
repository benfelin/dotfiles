#!/usr/local/bin/bash

cd $HOME/.local/bin/
rm -f git-prompt.sh git-completion.bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
