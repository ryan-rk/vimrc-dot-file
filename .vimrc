set number
set relativenumber
set ignorecase
set scroll=5
set scrolloff=10
set wrap
syntax on
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4
set hlsearch
let mapleader = " "


" Key Mapping
nnoremap <F1> :LeaderfFile<CR>
nnoremap <F2> :set relativenumber!<CR>
nnoremap <F3> :set hlsearch!<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Leader map
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>z :wq!<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'preservim/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'

call plug#end()

" Color Scheme
set background=dark
colorscheme palenight

" Airline theme settings
let g:airline_theme = "palenight"
if (has("termguicolors"))
    set termguicolors
endif

" Nerdcommenter settings
let g:NERDDefaultAlign = 'left'
