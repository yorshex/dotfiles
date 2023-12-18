# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
export CLICOLOR=1
export HISTCONTROL=ignoreboth

alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'

set -o vi

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

[ $SHLVL -eq 1 -a $$ -eq $BASHPID ] && MY_WIN_TITLE="\[\e]0;\u@\h \w\a\]"
PS1="${MY_WIN_TITLE}\[\e[36m\]\u@\h\[\e[0m\] \[\e[1;32m\]\w\[\e[0m\] \$ "

[ $SHLVL -eq 1 -a $$ -eq $BASHPID ] && trap 'echo -ne "\e]0;${PWD/#$HOME/\~} ${BASH_COMMAND}\a"' DEBUG
