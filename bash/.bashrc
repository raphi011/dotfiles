# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. ~/.bashrc_aliases

shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend             # append to history, don't overwite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


export EDITOR=vim
