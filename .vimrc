syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80,120
highlight ColorColumn ctermbg=236

" Plugins

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()

" Plugins

colorscheme gruvbox
set background=dark
