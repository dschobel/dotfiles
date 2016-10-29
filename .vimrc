" Fundamentals
execute pathogen#infect()
filetype plugin indent on

set nocompatible
set noesckeys

set laststatus=2   " Always show the statusline 
set encoding=utf-8 " Necessary to show unicode glyphs 
set rnu            " Set relative line numberings

set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase 
set switchbuf=usetab,newtab
" setglobal spell spelllang=en_us
set timeoutlen=500 " minimize delay after O

" Switch to alternate buffers
map <S-K> :bnext<cr>

" " disable Ex mode
map Q <Nop>

" Tabs
set autoindent
set smarttab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Colors
set background=dark
colorscheme darkblue
syntax on

" Insert mode Mappings
imap jj <Esc>
nmap <space><space> ^

" Moving between buffers
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>
