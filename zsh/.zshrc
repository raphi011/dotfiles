bindkey -v

setopt hist_ignore_dups

bindkey "^R" history-incremental-search-backward

test -f $HOME/.zshrc.local && source $HOME/.zshrc.local

alias vi="nvim"
alias vim="nvim"

export EDITOR="nvim"
export SHELL="/bin/zsh"

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
