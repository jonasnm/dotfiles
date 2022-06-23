set nocompatible              " be iMproved, required
filetype off                  " required

set shell=bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'
Plugin 'ghifarit53/tokyonight-vim'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'junegunn/goyo.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let mapleader = "\<Space>"

"Window changing remap
:nnoremap ,, <C-w>w
:nnoremap ,h <C-w>h
:nnoremap ,j <C-w>j
:nnoremap ,k <C-w>k
:nnoremap ,l <C-w>l
:nnoremap ,o <C-w>o
:nnoremap ,q <C-w>q

nnoremap <leader>n :NERDTreeFocus<CR>

:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>


" color schemes
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

" Light line
set laststatus=2

" Tab completion hack
set wildmode=longest,list,full
set wildmenu


function Pandoc()
		!pandoc % -s -t html5 -o %:r.html 
endfunction

