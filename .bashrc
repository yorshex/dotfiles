# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
export NVM_DIR="$HOME/.nvm"
export CLICOLOR=1
export HISTCONTROL=ignoreboth

alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

PS1='\[\e[36m\]\u@\h\[\e[0m\] \[\e[1;32m\]\w\[\e[0m\] \$ '
