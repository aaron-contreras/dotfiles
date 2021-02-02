syntax on

set nocompatible
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
set ttimeoutlen=0
set colorcolumn=81
set hid
highlight ColorColumn ctermbg=236

" =========
" |Plugins|
" =========

call plug#begin('~/.vim/plugged')

" Themes
" ==========
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
" ==========

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
Plug 'mattn/emmet-vim'
"
" Snippets + dependencies
" ==============
"
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" ==============

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ap/vim-css-color'

Plug 'mileszs/ack.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()
" Plugins

colorscheme solarized
set background=dark
syntax enable

let g:airline_theme='solarized'

set encoding=utf8
set guifont=:h

set tags=./tags;$HOME " Set tags directory



"
" ===================================
" Key maps
" ===================================
"
:let mapleader = ' '
map <C-n> :NERDTreeToggle<CR>
map <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>f :Files<CR>
map <Leader>w :w<CR>

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
map <Leader>mig :Rails db:migrate<CR>

" Don't automatically continue comments after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
set laststatus=2

let g:lightline = {
  \ 'colorscheme': 'solarized'
  \}

" ==================
" ALE plugin config
" ==================

" Set specific linters
let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'ruby': ['rubocop'],
      \}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
" Enable ALE integration for vim-airline
let g:airline#extensions#ale#enabled = 1
" Disable ALE auto highlights
let g:ale_set_highlights = 0


" Set up Emmet leader key
let g:user_emmet_leader_key = ','
