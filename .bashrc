# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
export CLICOLOR=1
export HISTCONTROL=ignoreboth

mkcd () { mkdir -p $1 && cd $1; }
alias ls='ls -h --color=auto'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias vi='nvim'
alias sxiv='nsxiv'
alias ncm='ncmpcpp'

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set colored-stats on'

[ $TERM = "st-256color" ] && MY_TITLE="\[\e]0;\w\a\]"
MY_USER='\[\e[36m\]\u@\h'
MY_PWD='\[\e[32m\]\w'
MY_DOLR='$([ $? -eq 0 ] && printf "\[\e[0m\]" || printf "\[\e[1;31m\]")\$'
PS1="${MY_TITLE}${MY_USER}${MY_RESET} ${MY_PWD} ${MY_DOLR}\[\e[0m\] "

[ $TERM = "st-256color" ] && trap 'printf "\e]0;${BASH_COMMAND//\\/\\\\}:${PWD/#$HOME/\~}\a"' DEBUG

true # so the dollar is not red when term is not st
