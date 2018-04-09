call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'keith/swift.vim'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'

" Initialize plugin system
call plug#end()

" Many parts of this file are stolen from Gary Bernhardt

filetype plugin indent on

set encoding=utf-8
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab

set background=dark
colorscheme dracula

set nobackup
set noswapfile

set ruler
set number
set cursorline
set showtabline=2

set wildmode=longest,list
set wildmenu

let mapleader=","

set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Mappings

inoremap jj <Esc>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <CR> :nohlsearch<cr>

nnoremap <leader><leader> <C-^>

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>
