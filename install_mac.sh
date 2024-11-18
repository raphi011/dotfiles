#!/bin/bash

$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)

brew install go k9s htop nvim fzf rg exa gh fish fisher yq diff-so-fancy kitty glow bat dlv ranger hexyl

fisher install IlanCosman/tide@v6
