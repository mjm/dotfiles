call plug#begin('~/.local/share/nvim/plugged')

Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'keith/swift.vim'
Plug 'fatih/vim-go'
Plug 'w0rp/ale'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'AndrewRadev/splitjoin.vim'

" Initialize plugin system
call plug#end()

" Many parts of this file are stolen from Gary Bernhardt

filetype plugin indent on

set encoding=utf-8
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab

set termguicolors
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

set noshowmode

let mapleader=","

set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

au BufNewFile,BufRead,BufWrite *.md,*.markdown syntax match Comment /\%^---\_.\{-}---$/

" Mappings

nnoremap <c-p> :GFiles<cr>
nnoremap <c-q> :Files<cr>

inoremap jj <Esc>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <CR> :nohlsearch<cr>

nnoremap <leader><leader> <C-^>

nnoremap <leader>t :w\|:!rspec<cr>

nnoremap <leader>m <C-w>=20<C-w>>

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

