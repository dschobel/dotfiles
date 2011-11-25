" Fundamentals
set nocompatible
set hlsearch
set incsearch
set ignorecase
set smartcase

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

" Mappings
imap jj <Esc>

"File Stuff
filetype plugin indent on

"ragtag mappings
"let g:ragtag_global_maps = 1 

" Motion for "next/last object". For example, "din(" would go to the next "()" pair
" and delete its contents.

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


"scala support
"~/.vim/ftdetect/scala.vim 
"~/.vim/indent/scala.vim  
"~/.vim/syntax/scala.vim
