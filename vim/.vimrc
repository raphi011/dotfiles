syntax on			" enables syntax highlighting

set nowrap			" disables textwrapping
set number			" show line numbers
set cul				" highlight current line

set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

set ignorecase
set smartcase
set incsearch
set hlsearch

set pastetoggle=<F2>

map <F3> :set nohlsearch!<Enter>
map <F4> :NERDTreeToggle<Enter>

" auto close nerd tree when it's the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endifR

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'altercation/vim-colors-solarized'

Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
