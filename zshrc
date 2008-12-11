# -*- mode: sh -*-

# Environment variables
export PS1="[%n@%m %1~]\$ "
export PATH=/usr/local/ActivePerl-5.10/bin:/usr/local/ActivePerl-5.10/site/bin:$PATH
export PATH=~/usr/bin:$PATH
export EDITOR=emacsclient
export SBCL_HOME=$HOME/usr/lib/sbcl

# Aliases
alias gitsrc="cd ~/usr/src; git clone"