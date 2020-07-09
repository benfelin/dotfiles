append_path ()
{
    eval $1=\"\${$1}\${$1:+:}$2\"
    export $1
}
export -f append_path

#-------------------------------------------------------------

prepend_path ()
{
    eval $1=\"\$2\${$1:+:}\${$1}\"
    export $1
}
export -f prepend_path

#-------------------------------------------------------------

man2pdf() 
{
    if [[ -z $1 ]]; then
        echo "USAGE: man2pdf [manpage]"
    else
        if [[ `find /usr/share/man -name $1\* | wc -l` -gt 0 ]]; then
            out=/tmp/$1.pdf
            if [[ ! -e $out ]]; then
                man -t $1 | ps2pdf - > $out
            fi
            if [[ -e $out ]]; then
                /usr/bin/evince $out
                #/usr/bin/xpdf $out
            fi
        else
            echo "ERROR: manpage \"$1\" not found."
        fi
    fi
}
export -f man2pdf

#-------------------------------------------------------------

extract () 
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *.exe)       cabextract $1  ;;
            *)           echo "'$1': unrecognized file compression" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
export -f extract

#-------------------------------------------------------------

mkcd () 
{ 
    mkdir -p "$@" && eval cd "\"\$$#\"" 
}
export -f mkcd

#-------------------------------------------------------------

wiki () 
{ 
    dig +short txt $1.wp.dg.cx 
}
export -f wiki

#-------------------------------------------------------------

treee () 
{
    if [ "$1" != "" ]; then
        CWD="$1"
    else 
        CWD="."
    fi
    
    ls -R $CWD | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
    
    if [ `ls -F -1 | grep "/" | wc -l` = 0 ]; then
        echo "   -> no sub-directories"
    fi
}
export -f treee

#-------------------------------------------------------------

hdate () 
{ 
    if [[ "$1" > 2147483647 ]]; then 
        echo "Larger than 32-bit signed integer" 
    else 
        echo $(date -d @$1 +%c)
    fi
}   
export -f hdate

#-------------------------------------------------------------

e2d ()
{
    perl -le "print scalar(localtime($1));"
}
export -f e2d

#-------------------------------------------------------------

bck () 
{ 
    cp $1{,.bck_$(date +%Y-%m-%d_%H-%M)} 
}
export -f bck

#-------------------------------------------------------------

m2h () 
{ 
    local S=${1}
    ((h=S/60))
    ((m=S%60)) 
    printf "%dh:%dm\n" $h $m
}  
export -f m2h

#-------------------------------------------------------------

sshcopyid ()
{
    cat ~/.ssh/id_rsa.pub | ssh $1 "cat - >> ~/.ssh/authorized_keys"
}
export -f sshcopyid

#-------------------------------------------------------------

plmodver ()
{
    perl -M$1 -e "print \$$1::VERSION;"
    #perl -M$1 -e "print "$$1::VERSION\n";"
}
export -f plmodver

#-------------------------------------------------------------

woot ()
{
    echo -e "\tKERNEL"
    uname -a
    getconf LONG_BIT
    echo -e "\tDISTRO"
    lsb_release -a
    echo -e "\tPACKAGE"
    dpkg --print-architecture
    echo -e "\tCPU"
    grep flags /proc/cpuinfo
    lshw -class processor
}
export -f woot

#-------------------------------------------------------------

pdfextract ()
{
    /usr/bin/gs \
        -sDEVICE=pdfwrite \
        -dNOPAUSE \
        -dBATCH \
        -dSAFER \
        -dFirstPage="${1}" \
        -dLastPage="${2}" \
        -sOutputFile="${3%.pdf}_p${1}-p${2}.pdf" \
        ${3}

}
export -f pdfextract

#-------------------------------------------------------------

mi() { 
   mediainfo --Inform="General;%FileName% (%Duration/String%) %FileSize/String1% \[%OverallBitRate/String%\]" "$@"
   mediainfo --Inform="Video;%Width%x%Height%" "$@"; 
}
export -f mi
miv() { 
   mediainfo --Inform="Video;%Width%x%Height%\n" "$@"; 
}
export -f miv
mig() { 
   mediainfo --Inform="General;%FileName% (%Duration/String%) %FileSize/String1% \[%OverallBitRate/String%\]\n" "$@"
}
export -f mig

#-------------------------------------------------------------

if [ -f $HOME/.bash_functions-local ]; then
         . $HOME/.bash_functions-local
fi
