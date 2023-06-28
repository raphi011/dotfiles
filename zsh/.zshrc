bindkey -v

setopt hist_ignore_dups

test -f $HOME/.zshrc.local && source $HOME/.zshrc.local

eval "$(starship init zsh)"
