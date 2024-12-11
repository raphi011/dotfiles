#if status is-interactive
#    # Commands to run in interactive sessions can go here
#end

if test -f ~/.config/fish/local-config.fish
  source ~/.config/fish/local-config.fish
end

fish_add_path /opt/homebrew/bin ~/go/bin

alias k="kubectl"
alias kcn="kubectl config set-context --current --namespace "

alias ll="exa -l -g --icons --git"
alias llt="exa -1 --icons --tree --git-ignore"

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

export EDITOR="zed"
export VISUAL="zed"
export SHELL="/opt/homebrew/bin/fish"

set -g fish_greeting

fzf --fish | source

kubectl completion fish | source

starship init fish | source
