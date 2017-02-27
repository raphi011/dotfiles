PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set 256 colors in terminal
if [ -e /usr/share/terminfo/x/xterm-256color ] && [ "$COLORTERM" == "xfce4-terminal" ]; then
        export TERM=xterm-256color
fi

# add aliases
. ~/.bashrc_aliases

shopt -s checkwinsize

export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=10000
export HISTFILESIZE=10000
shopt -s histappend             # append to history, don't overwite it
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export PATH="$HOME/.node_modules/bin:${PATH}:/home/raphi/.config/composer/vendor/bin:$(ruby -e 'print Gem.user_dir')/bin"

export EDITOR=vim
