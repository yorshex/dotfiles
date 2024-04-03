# If not running interactively, don't do anything
[[ $- != *i* ]] && return

mkcd () {
	mkdir -p $1 && cd $1
}

export EDITOR=nvim
export CLICOLOR=1
export HISTCONTROL=ignoreboth

alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias vi='nvim'
alias sxiv='nsxiv'

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'

[ $TERM = "st-256color" ] && MY_TITLE="\[\e]0;:\w\a\]"
MY_PWD='\[\e[32m\]\w\[\e[0m\]'
MY_DOLR='$([ $? -ne 0 ] && echo -en "\[\e[1;31m\]\$\[\e[0m\]" || echo -n "\$")'
PS1="${MY_TITLE}${MY_PWD} ${MY_DOLR} "

[ $TERM = "st-256color" ] && trap 'echo -ne "\e]0;${BASH_COMMAND}:${PWD/#$HOME/\~}\a"' DEBUG

true # so the dollar is not red when term is not st
