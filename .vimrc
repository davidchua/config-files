set path=~/codebase/builder-test
set fileformat=unix
set background=dark
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set nu
set hlsearch

" code-folding
set foldmethod=indent
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set textwidth=80

set nocompatible
set laststatus=2
set encoding=utf-8

syntax on

set clipboard+=unnamed

let mapleader = ','

let g:indent_guides_auto_colors = 0
autocmd BufNewFile,BufRead *.txt,*.markdown,*.md setlocal textwidth=0 wrapmargin=0 formatoptions-=t wrap linebreak nolist
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufNewFile,BufRead *.py set tabstop=4 expandtab shiftwidth=4 softtabstop=4


"filetype plugin indent on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim-powerline settings 
" set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set t_Co=256

"let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
"Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'kien/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'airblade/vim-gitgutter.git'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'ap/vim-buftabline'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'christophermca/meta5'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'morhetz/gruvbox'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/Sift'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'dracula/vim'
" language-server client
Plugin 'natebosch/vim-lsc'
Plugin 'luochen1990/rainbow'
" react/js
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'neoclide/vim-easygit'

Plugin 'kchmck/vim-coffee-script'
Plugin 'hashivim/vim-terraform'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...
"
Plugin 'artanikin/vim-synthwave84'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'nvie/vim-flake8'
Plugin 'gleam-lang/gleam.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'sainnhe/sonokai'

call vundle#end()
filetype plugin indent on     " required!

" Show trailing whitespace:
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" Turn of beeping
autocmd GUIEnter * set vb t_vb=

map <ESC>[H <Home>
map <ESC>[F <END>

map <C-Tab> <Plug>snipMateTrigger

let g:snippets_dir="~/.vim/bundle/snipmate.vim/snippets/, ~/.vim/bundle/my-snippets/snippets"

" map .html.erb to html.eruby snippets
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby nowrap

" Arrow keys! Get rid of 'em!
noremap <Left>  <NOP>
noremap <Right> <NOP>
noremap <Up>    <NOP>
noremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
" noremap j k
" noremap k j


" map Ctrl-N to Buffer next and Ctrl-M to Buffer prev
nnoremap <C-N> :bnext<CR>
nnoremap <C-M> :bprev<CR>

nnoremap <C-T> :NERDTreeToggle<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>

nnoremap <Leader>g :Gblame<CR>


" vim-gutter settings
highlight clear SignColumn
:sign define dummy
:execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

let g:jsx_ext_required = 0
syntax enable
"colorscheme solarized
"let g:solarized_termcolors=256
"colorscheme wattslandia
"colo meta5
"colo molokai
"colo jellybeans
syntax on
"colo dracula
"
" REAL
"colo jellybeans
"colo CandyPaper
"colo synthwave84
"colo sonokai

" Set relativenumbers
set ruler
" set relativenumber

" 1 to disable YCM and 0 to enable
let g:loaded_youcompleteme = 1

map <Leader> <Plug>(easymotion-prefix)

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_auto_type_info = 1
let g:ycm_key_list_select_completion=['<Down>', '<c-j>']
let g:ycm_key_list_previous_completion=['<Up>', '<c-k>']
let g:go_gopls_enabled = 1

autocmd FileType go nnoremap <leader><leader> t :GoTestFunc<CR>
au filetype go inoremap <buffer> . .<C-x><C-o>

let g:echodoc_enable_at_startup=1

set completeopt=longest,menuone
set cmdheight=2

inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

let g:lsc_server_commands = {
 \  'ruby': {
 \    'command': 'solargraph stdio',
 \    'log_level': -1,
 \    'suppress_stderr': v:true,
 \  },
 \  'javascript': {
 \    'command': 'typescript-language-server --stdio',
 \    'log_level': -1,
 \    'suppress_stderr': v:true,
 \  }
 \}

let g:lsc_enable_autocomplete  = v:true
let g:lsc_enable_diagnostics   = v:false
let g:lsc_reference_highlights = v:false
let g:lsc_trace_level          = 'off'
"let g:lsc_auto_map = v:true
"
let g:snipMate = { 'snippet_version' : 1 }

let g:rainbow_active = 1
let g:omni_sql_no_default_maps = 1
let g:easygit_enable_command = 1

" Set split panel
set fillchars+=vert:\|
highlight VertSplit ctermbg=black ctermfg=black cterm=NONE

set noemoji
"
ab :+1: 👍

