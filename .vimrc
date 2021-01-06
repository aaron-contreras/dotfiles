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
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-commentary'
Plug 'Shougo/neocomplete.vim'
Plug 'mattn/emmet-vim'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()
" Plugins

colorscheme gruvbox
set background=dark
:set tags=./tags;$HOME

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

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Git
map <Leader>gs :Git status<CR>
map <Leader>ga :Git add .<CR>
map <Leader>gc :Git commit -m ""<Left>

" Ruby related

map <Leader>r :Rails<space>
map <Leader>ec :Econtroller<space>
map <Leader>em :Emodel<space>
map <Leader>ev :Eview<space>
