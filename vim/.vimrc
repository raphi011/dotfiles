syntax on			" enables syntax highlighting
set nowrap                      " disables textwrapping
set number                      " show line numbers
set cul                         " highlight current line

set autoindent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set laststatus=2                " make airline appear immediately

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

" neocomplete tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 

" cycle through buffers
:nnoremap <Tab> :bnext<CR> 
:nnoremap <S-Tab> :bprevious<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" copy paste in gvim
"nmap <C-V> "+gP
"imap <C-V> <ESC><C-V>i
"vmap <C-C> "+y

map <F3> :set nohlsearch!<Enter>
map <F4> :NERDTreeToggle<Enter>

""" PLUGIN SETTINGS """

" auto close nerd tree when it's the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endifR    

let g:neocomplete#enable_at_startup = 1         " auto start neocomplete
let g:airline#extensions#tabline#enabled = 1    " auto start airline
let g:airline_powerline_fonts = 1               " populate powerline font glyphs
let g:bufferline_echo = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'powerline/fonts'

Plugin 'scrooloose/syntastic'

Plugin 'notpratheek/vim-luna'
Plugin 'tpope/vim-fugitive'

Plugin 'Shougo/neocomplete.vim'

Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
