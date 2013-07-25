let mapleader = ','
"let g:slimv_swank_clojure = '!xterm -e lein swank &'
let g:lisp_rainbow=1
"let g:slimv_reply_syntax=1

" config for Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'vim-ruby/vim-ruby'
Bundle 'majutsushi/tagbar'
Bundle 'epeli/slimux'
"Bundle 'benmills/vimux'
"Bundle 'jpalardy/vim-slime'
"Bundle 'vim-scripts/VimClojure'
"Bundle 'tpope/vim-foreplay'
"Bundle 'vim-scripts/slimv.vim'

set nocompatible   " Disable vi-compatibility 
set laststatus=2   " Always show the statusline 
set encoding=utf-8 " Necessary to show unicode glyphs 
set rnu            " Set relative line numberings

" Fundamentals
filetype plugin indent on 
set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase 
set switchbuf=usetab,newtab
"  set timeoutlen=500 " minimize delay after O

" binding for Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 2 " WD is the nearest ancestor that contains one of these directories or files: .git/ .hg/ .svn/ .bzr/ _darcs/

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

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
colorscheme inkpot
syntax on " syntax highlighting

" Insert mode Mappings
imap jj <Esc>
"
" Settings for VimClojure
" let vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
" let vimclojure#ParenRainbow=1           " Rainbow parentheses'!
" let g:slime_target = "tmux"


"set autocomplete to be approx. zsh-like
set wildmode=longest,list:longest

" Moving between buffers
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

map <Leader>l :SlimuxREPLSendLine<cr>
map <Leader>s :SlimuxREPLSendSelection<cr>

" Move between windows
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Motion for "next/last object". For example, "din(" would go to the next "()" pair and delete its contents.

onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>

onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>

function! s:NextTextObject(motion, dir)
  let c = nr2char(getchar())

  if c ==# "b"
      let c = "("
  elseif c ==# "B"
      let c = "{"
  elseif c ==# "d"
      let c = "["
  endif

  exe "normal! ".a:dir.c."v".a:motion.c
endfunction


autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let highlight def link rubyRspec Function
