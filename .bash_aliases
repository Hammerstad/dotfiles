#!/bin/bash
alias sl="ls"
alias please="sudo !!"
 
extract()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf "$1"    ;;
            *.tar.gz)    tar xvzf "$1"    ;;
            *.bz2)       bunzip2 "$1"     ;;
            *.rar)       unrar x "$1"     ;;
            *.gz)        gunzip "$1"      ;;
            *.tar)       tar xvf "$1"     ;;
            *.tbz2)      tar xvjf "$1"    ;;
            *.tgz)       tar xvzf "$1"    ;;
            *.zip)       unzip "$1"       ;;
            *.Z)         uncompress "$1"  ;;
            *.7z)        7z x "$1"        ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
 
..() { if [ $1 -ge 0 2> /dev/null ]; then x=$1; else x=1; fi; for (( i = 0; i < $x; i++ )); do cd ..; done; }
 
lines()
{
    find . -name "*.$1" | xargs wc -l
}
 
classnames()
{
    find . -name "*.cs" |  xargs -n1  basename | awk '{ print length($0),$0 | "sort -n"}'
}

alias less='/bin/less -r'
alias ls='/bin/ls -F --color=tty --show-control-chars'

alias glg="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias mygrep="grep -rni . -e "

alias cyg-get="/cygdrive/c/Users/emh/cygwin64/setup-x86_64.exe -q -P"

alias vagrant="/cygdrive/c/HashiCorp/Vagrant/bin/vagrant"

# Default to human readable figures
alias df='df -h'
alias du='du -h'
# Misc :)
alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
#
# Some shortcuts for different directory listings
alias ls='ls -hF --color=tty'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
# alias vdir='ls --color=auto --format=long'
alias ll='ls -alF'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
