bindkey -v

setopt hist_ignore_dups

test -f $HOME/.zshrc.local && source $HOME/.zshrc.local

alias vi="nvim"
alias vim="nvim"
export EDITOR="nvim"

eval "$(starship init zsh)"
