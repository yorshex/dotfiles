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

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set colored-stats on'

MY_RESET='\[\e[0m\]'
MY_GREEN='\[\e[32m\]'
MY_BOLD_RED='\[\e[1;31m\]'

[ $TERM = "st-256color" ] && MY_TITLE="\[\e]0;:\w\a\]"
MY_PWD="$MY_GREEN\w"
MY_DOLR='$([ $? -eq 0 ] && printf "'${MY_RESET}'" || printf "'${MY_BOLD_RED}'")\$'
PS1="${MY_TITLE}${MY_PWD} ${MY_DOLR}${MY_RESET} "

[ $TERM = "st-256color" ] && trap 'printf "\e]0;${BASH_COMMAND//\\/\\\\}:${PWD/#$HOME/\~}\a"' DEBUG

true # so the dollar is not red when term is not st
