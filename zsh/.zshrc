bindkey -v

setopt hist_ignore_dups

bindkey "^R" history-incremental-search-backward

test -f $HOME/.zshrc.local && source $HOME/.zshrc.local

alias vi="nvim"
alias vim="nvim"

alias k="kubectl"

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

export VISUAL="nvim"
export EDITOR="nvim"
export SHELL="/bin/zsh"

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
