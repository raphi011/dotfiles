#
# ~/.bashrc
#

shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


# uni related commands
alias h2='java -cp /home/raphi/.m2/repository/com/h2database/h2/1.4.181/h2-1.4.181.jar org.h2.tools.Server'

#usefull commands
alias clip='xclip -sel clip'                # copy text to clipboard


