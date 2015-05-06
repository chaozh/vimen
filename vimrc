"no compatible for vi
set nocompatible
" about sytax 
syntax enable
syntax on

"colorscheme desert
 
set tabstop=4 "a tab eq 4 space
set softtabstop=4 "backspace for tab
set shiftwidth=4 "size of indent
set cindent "auto indent for c files
set autoindent
set smartindent
set expandtab "replace tab with spaces

set nowrap "wrap long lines
set matchpairs=(:),{:},[:],<:>
" VIM UI
set showcmd
set ruler
set mouse=a
set mousehide

map Q gq
" inoremap <C-U> <C-G>u<C-U>

" Searching
set incsearch
set showmatch
set hlsearch
set smartcase

" File type 
let &termencoding=&encoding
set encoding=utf-8
set fileencoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""
" Vundle
"""""""""""""""""""""""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundles here!
Bundle 'taglist.vim'
Bundle 'myusuf3/numbers.vim'

filetype plugin indent on
"
" :BundleList           - list configured bundles
" :BundleInstall(!)     - install(update) bundles
" :BundleSearch(!) foo  - search for foo
" :BundleClean(!)       - removal of unused bundles
" see :h vundle for details
