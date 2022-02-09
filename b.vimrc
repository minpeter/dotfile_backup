call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()

if has("syntax")
	syntax on
endif

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

"key mapping
map <F9> :NERDTreeToggle <CR>

set t_vb=
