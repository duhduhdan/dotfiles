set nocompatible
set autoread

let mapleader = "\<Space>"
let g:mapleader = "\<Space>"

set title             " Set terminal title
set ruler             " Show where you are
set history=500

" Tab control
set softtabstop=2     " insert mode tab and backspace uses 2 spaces
set shiftwidth=2      " normal mode indentation commands uses 2 spaces
set expandtab         " expand tabs to spaces
set tabstop=2         " actual tab uses 8 spaces

set mouse=a           " click tabs, drag tabs, and drag split bars
set clipboard=unnamed " yank and paste with the system clipboard

set directory-=.      " don't store swapfiles in the current directory
set list              " show trailing whitespace
set listchars=""
set listchars=tab:\ \
set listchars+=trail:.
set tabpagemax=30
set showcmd           " show current command going on

set showtabline=2

" Code folding settings
set foldmethod=indent
set nofoldenable      " Remove ugly folds
set diffopt=filler,context:9999 "nofold in diff mode

set inccommand=split

set timeoutlen=500
set ttimeoutlen=100

set wildmenu          " enhanced command line completion
set wildmode=list:longest,full
set wildignore+=*.DS_Store
set wildignore+=*/node_modules/*
set wildignore+=*/__snapshots__/*
set wildignore+=*/tmp/**
set wildignore+=*/.jest/*
set hidden            " allow buffer to be hidden when writing to disk
set scrolloff=5       " show context above/below cursor line
set shell=$SHELL

set path+=**          " Search down into subfolders

set ignorecase        " case-insensitive search
set smartcase         " case-sensitive search if any caps
set hlsearch
set incsearch         " search as you type

set showmatch         " highlight matching on {[()]}
set mat=2             " how many tenths of a second to blink

" Error bells
set noerrorbells
set visualbell

set noshowmode        " lightline is prettier, don't need this

au BufRead,BufNewFile *.tag set filetype=html
au BufRead,BufNewFile *.bash_profile set filetype=sh
au BufRead,BufNewFile *.bashrc set filetype=sh
au BufRead,BufNewFile Fastfile set filetype=ruby

au FileType json syntax match Comment +\/\/.\+$+

" Theme
set encoding=utf8
set number            " show the current line number

set autoindent        " automatically set indent of new line
set smartindent

set noswapfile        " Don't make backups.
set nowritebackup     " Even if you did make a backup, don't keep it around.
set nobackup

set laststatus=2      " show the status line all the time
set updatetime=300
set signcolumn=yes
set linespace=3

filetype plugin on

" QOL upgradez
inoremap jk <Esc>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>n :noh<CR>
nnoremap <Leader>q :q<CR>

nnoremap <Leader>S :vsplit<CR>
nnoremap <Leader>h :split<CR>

nnoremap <C-t> :terminal<cr>

nnoremap <leader>, <C-W><
nnoremap <leader>. <C-W>>

nnoremap <leader>< <C-W>+
nnoremap <leader>> <C-W>-

" hjkl keys navigate buffer splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>r :edit<cr>

nnoremap <C-t> :terminal<Cr>
tnoremap <leader>k <C-\><C-n>

" buffer nav shortcuts
nnoremap <leader>b :ls<CR>
nnoremap <leader>H :bn<CR>
nnoremap <leader>L :bp<CR>

" rebalance splits
nnoremap <leader>= <c-w>=

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

source $HOME/dotfiles/nvim/bundles.vimrc

call plug#end()

call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')

set termguicolors
set t_Co=256
set background=dark
syntax on
colorscheme nord

" ===============================================================================
" Lightline Config
" ===============================================================================
if !exists('g:lightline')
  source $HOME/dotfiles/nvim/lightline.vim
endif


" ===============================================================================
" FZF Config
" ===============================================================================
source $HOME/dotfiles/nvim/fzf.vim


" ===============================================================================
" Coc config
" ===============================================================================
source $HOME/dotfiles/nvim/coc.vim
