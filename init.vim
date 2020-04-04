" Basic
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set clipboard=unnamedplus " https://stackoverflow.com/a/8757876
set autochdir
set history=2048
set nobackup
set noswapfile
set autoread
set autowrite

" UI
set mouse=a
set termguicolors
set cursorline
set nowrap
set novisualbell
set noerrorbells
set list
set showbreak=↪\
set listchars=tab:→\ ,extends:›,precedes:‹,nbsp:␣,trail:·
set showcmd
set number

" Ident
set autoindent
set smartindent
set smarttab
set shiftround
set expandtab
set shiftwidth=4
set tabstop=4

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set magic

" Keymap

let mapleader=" "

" Plugin
if has('nvim')
  call plug#begin(stdpath('data') . '/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

Plug 'jiangmiao/auto-pairs'

Plug 'junegunn/fzf'

Plug 'editorconfig/editorconfig-vim'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

Plug 'flazz/vim-colorschemes'

Plug 'tpope/vim-commentary'
nmap <leader>/ <Plug>CommentaryLine
xmap <leader>/ <Plug>Commentary
omap <leader>/ <Plug>Commentary


Plug 'tpope/vim-surround'

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-sleuth'

Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

Plug 'justinmk/vim-sneak'
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

Plug 'airblade/vim-gitgutter'

Plug 'sheerun/vim-polyglot'

Plug 'yianwillis/vimcdoc'

call plug#end()

" Colorscheme
set background=dark
colorscheme gruvbox
