syntax on			" enables syntax highlighting
set nowrap                      " disables textwrapping
set number                      " show line numbers
set cul                         " highlight current line

set background=dark
colorscheme solarized

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

set wildmode=longest,list,full
set wildmenu

set pastetoggle=<F2>

" neocomplete tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 

" cycle through buffers
:nnoremap <Tab> :bnext<CR> 
:nnoremap <S-Tab> :bprevious<CR>

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

Plugin 'bling/vim-airline'
Plugin 'powerline/fonts'

Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'

Plugin 'Shougo/neocomplete.vim'

Plugin 'altercation/vim-colors-solarized'

call vundle#end()

filetype plugin indent on
