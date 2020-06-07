let mapleader=","
syntax on
colorscheme molokai
set helplang=ja
set nu
set relativenumber
set incsearch
set smartcase
set title
set list
set nobackup
set noswapfile
set cursorline
set cursorcolumn
set smartindent
set showmatch
set laststatus=2
set wildmode=list:longest
set expandtab
set tabstop=2
set shell=/usr/local/bin/zsh
set shiftwidth=2
set list
set listchars=tab:\▸\-,trail:·,extends:»,precedes:«,nbsp:%
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set hlsearch
set ignorecase
set ruler
set nocompatible
set autoread
" set clipboard=unnamed,autoselect
set backspace=indent,eol,start
set exrc
set secure
set wildmenu
set wildmode=full
language en_US
filetype plugin on
nnoremap <C-[><C-[> :nohlsearch<CR><Esc>
nnoremap <C-@><C-@> :nohlsearch<CR><Esc>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yuma/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/yuma/.config/nvim/dein')
  call dein#begin('/Users/yuma/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/yuma/.config/nvim/dein/repos/github.com/Shougo/dein.vim')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable


" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
