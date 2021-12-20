set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
call vundle#end()            " required
filetype plugin indent on    " required

if has("syntax")
	syntax on
endif

set hlsearch
set nu
set autoindent
set ts=4
set sts=4
set cindent
set laststatus=2
set shiftwidth=4
set showmatch
set smartcase
set smarttab
set smartindent
set ruler
set fileencodings=utf8,euc-kr
set mouse=a
map p<F10> :w <CR> :! python % <CR>
map r<F10> :w <CR> :! cargo run <CR>
map c<F10> :w <CR> :! gcc % -o temp/%< $(pkg-config --cflags --libs gtk+-3.0) && ./temp/%< <CR>

set vb t_vb=
