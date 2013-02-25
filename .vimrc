set path=~/codebase/builder-test

set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set nu
set hlsearch
set incsearch

highlight clear SignColumn
set textwidth=80

set nocompatible
syntax on

set clipboard+=unnamed


"filetype plugin indent on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'msanders/snipmate.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" Turn of beeping
autocmd GUIEnter * set vb t_vb=

map <ESC>[H <Home>
map <ESC>[F <END>


" Arrow keys! Get rid of 'em!
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>
" inoremap <Up>    <NOP>
" inoremap <Down>  <NOP>
