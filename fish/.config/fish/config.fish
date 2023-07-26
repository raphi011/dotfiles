if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path $HOME/go/bin /usr/local/opt/curl/bin $HOME/.local/bin

alias vi="nvim"
alias vim="nvim"

alias k="kubectl"

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

export EDITOR="nvim"
export SHELL="/bin/zsh"

set -g fish_greeting

kubectl completion fish | source
starship init fish | source

