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

call plug#end()

" Plugins

colorscheme solarized
set background=dark
" Key maps
:let mapleader = ' '
map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <C-p> :Rg<CR>

