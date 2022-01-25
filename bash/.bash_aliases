#------------------------
# Safety against deletion
#------------------------

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p' # Prevents accidentally clobbering files.

#------------------------
# Fast navigation
#------------------------

alias ..='cd ..'
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."

alias p='pushd'
alias o='popd'
alias d='dirs -v'
alias 1="pushd"
alias 2="pushd +2"
alias 3="pushd +3"
alias 4="pushd +4"
alias 5="pushd +5"
alias 6="pushd +6"
alias 7="pushd +7"
alias 8="pushd +8"
alias 9="pushd +9"

#-------------------------------------------------------------
# The 'du' family
#-------------------------------------------------------------

alias dud='du -chd 1'
alias dud2='du -chd 2'
alias dud3='du -chd 3'
alias dud4='du -chd 4'
alias duds='du -chd 1 | sort -h'
alias duds2='du -chd 2 | sort -h'
alias duds3='du -chd 3 | sort -h'
alias duds4='du -chd 4 | sort -h'

#-------------------------------------------------------------
# The 'ls' family
#-------------------------------------------------------------

alias ll="l -alFi"
alias la="ll -A"
alias l="ls -CF"

alias la='ls -Al'          # show hidden files
alias ld='ls -d */'        # show directories
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

# If your version of 'ls' doesn't support --group-directories-first try this:
# function ll(){ ls -l "$@"| egrep "^d" ; ls -lXB "$@" 2>&-| \
#                egrep -v "^d|total "; }

#-------------------------------------------------------------
# Git aliases
#-------------------------------------------------------------

alias gs='git s'

alias gg='git g'

alias glf='git lf'
alias glc='git lc'
alias gdump="git dump"

alias gl='git l'
alias gll='git ll'
alias glr='git lr'
alias glrr='git lrr'
alias gla='git la'

alias gls='git ls'
alias gsa='git sa'
alias gss='git ss'

alias gb='git b'
alias gbb='git bb'
alias gba='git ba'
alias gbm='git bm'
alias gbd='git bd'

alias gc='git c'
alias gcb='git cb'
alias gch='git ch'

alias ga='git a'
alias gai='git ai'

alias gd='git d'
alias gdc='git dc'
alias gdh='git dh'
alias gdr='git dr'

alias gmt='git mt'

alias gm='git m'
alias gma='git ma'
alias gam='git am'

alias gp='git p'
alias gcl='git cl'

alias gra='git ra'
alias grr='git rr'

alias gr='git r'
alias gr1='git r1'
alias gr2='git r2'
alias grh='git rh'
alias grh1='git rh1'
alias grh2='git rh2'

alias gclean='git clean'
alias gpristine='git pristine'

alias gk='gitk --all &'
alias ggg='git gui &'

#-------------------------------------------------------------
# tailoring 'less'
#-------------------------------------------------------------

alias more='less'
export PAGER=less
export LESSCHARSET='utf-8'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
# Use this if lesspipe.sh exists
export LESS='-i -w  -z-4 -g -M -X -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

#-------------------------------------------------------------
# spelling typos - highly personnal and keyboard-dependent :-)
#-------------------------------------------------------------

alias got='git '
alias get='git '
alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'

#------------------------
# misc
#------------------------

alias vi='vim'
alias aliaz='unalias -a && source ~/.bash_aliases'
alias tmpcd='cd `mktemp -d`'
alias quota='quota -s'
alias h='history | grep'
alias j='jobs -l'
alias which='type -a'
alias path='echo -e ${PATH//:/\\n}'
alias inv='env | grep CNT_'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias df='df -kTh'
alias mount="mount | column -t"

alias unix2dos="sed -e 's/$/\r/'"
alias dos2unix="sed -e 's/\r$//'"
alias ping="ping -c 3"
alias c='reset; clear'
alias ps2="ps -ef | grep -v $$ | grep -i"
alias bc="bc -l"
alias now='date +"%T"'
alias nowtime='date +"%d-%m-%Y"'
alias port="netstat -tulanp"
alias cafe="cat /dev/urandom | hexdump -C | grep \"ca fe\""
alias term='echo $TERM": "`tput colors`" colors ("`tput cols`"x"`tput lines`")"'
alias palette='for i in {0..255} ; do printf "\x1b[38;5;${i}mcolour${i} "; done'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias myip="curl http://ipecho.net/plain; echo"
alias config='/usr/local/bin/git --git-dir=${HOME}/.cfg/ --work-tree=${HOME}'

#-------------------------------------------------------------
# perl one-liner
#-------------------------------------------------------------

alias perl_o=' perl -wl '           # output generation
alias perl_io=' perl -wnl '         # O/I processing
alias perl_iop=' perl -wpl '        # O/I processing with print
alias perl_f=' perl -wnla '         # field processing
alias perl_fp=' perl -wpla '        # field processing with print
# paragraph mode
alias Perl_io=' perl -00 -wnl '     # O/I processing
alias Perl_iop=' perl -00 -wpl '    # O/I promessing with print
alias Perl_f=' perl -00 -wnla '     # field processing
alias Perl_fp=' perl -00 -wpla '    # field processing with print

# w=warnings 
# l=automatic line-ending processing: chomps $/ and  assigns "$\"
# n=processing input
# p=processing input with auto print
# a=autosplit mode (@F array)
# 0=input record separator (default=line, 0=paragraph, 777=file)

alias plconf="perl -MConfig -e 'print Config->myconfig; print Config->config_sh;' "
alias plmodall="find `perl -e 'print "@INC"'` -name '*.pm' -print"
alias pldir="perl -e 'foreach \$folder (@INC) { print \"\$folder\n\";}'"
alias bp="perl -MBio::Root::Version -e 'print \"Perl: $]\nBioPerl: \$Bio::Root::Version::VERSION\n\";'"
alias calc="perl -ple '\$_=eval'"

#-------------------------------------------------------------
#-------------------------------------------------------------
#-------------------------------------------------------------
#-------------------------------------------------------------

if [ -f ${HOME}/.bash_aliases-local ]; then
     . ${HOME}/.bash_aliases-local
fi
