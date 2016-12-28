export PS1="(%d) %n $ "

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/raphi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


bindkey -v
bindkey '^R' history-incremental-search-backward
