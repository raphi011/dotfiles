syntax on			" enables syntax highlighting
set nowrap                      " disables textwrapping
set number                      " show line numbers
set cul                         " highlight current line

set autoindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
"set laststatus=2                " make airline appear immediately

set ignorecase
set smartcase
set incsearch
set hlsearch

colorscheme desert 

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

set wildmode=longest,list,full
set wildmenu

set pastetoggle=<F2>

let $PYTHONPATH='/usr/lib/python3.4/site-packages'

let g:neomake_javascript_enabled_makers = ['eslint']




" cycle through buffers
:nnoremap <Tab> :bnext<CR> 
:nnoremap <S-Tab> :bprevious<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

map <F3> :set nohlsearch!<Enter>

call plug#begin('~/.config/nvim/plugged')

Plug 'rhysd/nyaovim-tree-view'
Plug 'neomake/neomake'

call plug#end()
