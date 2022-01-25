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
Plugin 'file:///home/jonas/.vim/bundle/nerdcommenter'
Plugin 'file:///home/jonas/.vim/bundle/nerdtree'
Plugin 'file:///home/jonas/.vim/bundle/python-mode'
Plugin 'file:///home/jonas/.vim/bundle/python.vim'
Plugin 'file:///home/jonas/.vim/bundle/pythoncomplete'

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
