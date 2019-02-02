call plug#begin('~/.local/share/nvim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
Plug 'direnv/direnv.vim'
Plug 'dracula/vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'ElmCast/elm-vim'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-hashicorp-tools'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'keith/swift.vim'
Plug 'pangloss/vim-javascript'
Plug 'radenling/vim-dispatch-neovim'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'uarun/vim-protobuf'
Plug 'w0rp/ale'

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
noremap \ ,

set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

au BufNewFile,BufRead,BufWrite *.md,*.markdown syntax match Comment /\%^---\_.\{-}---$/
au FileType go nnoremap <leader>i :GoImport<space>

let test#strategy = "neovim"

set shell=bash\ -l

" Mappings

nnoremap <c-p> :GFiles<cr>
nnoremap <c-q> :Files<cr>

inoremap jj <Esc>
tnoremap jj <C-\><C-n>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <CR> :nohlsearch<cr>

nnoremap <leader><leader> <C-^>

nnoremap <leader>t :w\|:TestSuite<cr>
nnoremap <leader>f :w\|:TestFile<cr>
nnoremap <leader>n :w\|:TestNearest<cr>
nnoremap <leader>l :w\|:TestLast<cr>

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

