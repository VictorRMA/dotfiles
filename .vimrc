call plug#begin('~/.vim/plugged') " junegunn/vim-plug

Plug 'gruvbox-community/gruvbox'        " gruvbox-theme
Plug 'vim-airline/vim-airline'          " custom line

Plug 'tpope/vim-endwise'		" end certain structures automatically
Plug 'tpope/vim-fugitive'		" git

Plug 'junegunn/fzf', {'do': { -> fzf#install() }} " fuzzy finder
Plug 'junegunn/fzf.vim'

call plug#end() " required

let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox
set background=dark

" General
set nocompatible                " use vim defaults
set backspace=indent,eol,start  " make that backspace key work the way it should
set history=1000                " set bigger history of executed commands
set showcmd                     " display incomplete commands
set autoread                    " automatically re-read files if modified from outside
set hidden                      " manage background buffers

" User Interface
set number              " show line numbers
set relativenumber      " show relative line numbers
set ruler               " show the current row and column
set noerrorbells        " turn off beep on errors
set visualbell          " flash the screen instead of beeping on errors
set mouse=a             " enable mouse for scrolling and resizing
set title               " set window title
set termguicolors       " 24bit color support
set colorcolumn=80      " visual column

" swap and backup
set nobackup            " do not keep a backup file

" indentation
set autoindent                  " new lines inherit the indentation
filetype plugin indent on       " smart autoindentation
set expandtab                   " Convert tabs to spaces
set nowrap                      " dont wrap lines

" search
set hlsearch            " highlight searches
set incsearch           " do incremental searching
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present
set showmatch           " jump to matches when entering regexp

" text rendering
set encoding=utf-8      " Encoding
set scrolloff=3         " keep 3 lines when scrolling
set sidescrolloff=5     " keep 5 columns to the left and right
syntax on               " turn syntax highlighting on by default

" miscellaneous
set confirm             " display confirmation dialog when closing an unsaved file

set t_RV=               " http://bugs.debian.org/608242, http://groups.google.com/group/vim_dev/browse_thread/thread/9770ea844cec3282

" Basic mappings
let mapleader = " "

nnoremap <leader>w :w<cr>

inoremap jk <Esc>

