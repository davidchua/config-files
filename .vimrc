set path=~/codebase/builder-test

set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch

set textwidth=80

set nocompatible
syntax on
filetype plugin indent on

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" Turn of beeping
autocmd GUIEnter * set vb t_vb=

map <ESC>[H <Home>
map <ESC>[F <END>


" Arrow keys! Get rid of 'em!
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
