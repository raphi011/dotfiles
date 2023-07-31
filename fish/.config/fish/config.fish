#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

if test -f ~/.config/fish/local-config.fish
  source ~/.config/fish/local-config.fish
end

fish_add_path /opt/homebrew/bin ~/go/bin /usr/local/opt/curl/bin ~/.local/bin

alias vi="nvim"
alias vim="nvim"

alias k="kubectl"
alias kcn="kubectl config set-context --current --namespace "

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

export EDITOR="nvim"
export VISUAL="nvim"
export SHELL="/opt/homebrew/bin/fish"

set -g fish_greeting

kubectl completion fish | source

starship init fish | source
