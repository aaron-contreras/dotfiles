syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set relativenumber
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set syntax=on
set shortmess+=F

set colorcolumn=80
highlight ColorColumn ctermbg=236

" Plugins

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
" Run async processes
Plug 'tpope/vim-dispatch'

call plug#end()

" Plugins

colorscheme gruvbox
set background=dark

" Key maps
:let mapleader = ' '
map <C-n> :NERDTreeToggle<CR>
map <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>f :Files<CR>
" Navigation
map <silent> <Leader>h <C-w>h
map <silent> <Leader>j <C-w>j
map <silent> <Leader>k <C-w>k
map <silent> <Leader>l <C-w>l
