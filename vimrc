" test
" Startup Pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"set noesckeys
set autoindent
set smartindent

set pastetoggle=<F5>

set tabstop=4
set shiftwidth=4
set noexpandtab

set nocompatible " explicitly get out of vi-compatible mode

set noexrc " don't use local version of .(g)vimrc, .exrc

syntax enable
syntax on
syntax sync fromstart

let g:solarized_termcolors=256

"set background=light
"colorscheme solarized

set cpoptions=aABceFsmq
"             |||||||||
"             ||||||||+-- When joining lines, leave the cursor
"             |||||||      between joined lines
"             |||||||+-- When a new match is created (showmatch) 
"             ||||||      pause for .5
"             ||||||+-- Set buffer options when entering the
"             |||||      buffer
"             |||||+-- :write command updates current file name
"             ||||+-- Automatically add <CR> to the last line 
"             |||      when using :@r
"             |||+-- Searching continues at the end of the match 
"             ||      at the cursor position
"             ||+-- A backslash has no special meaning in mappings
"             |+-- :write updates alternative file name
"             +-- :read updates alternative file name

set backspace=indent,eol,start " make backspace a more flexible
set backup " make backup files 
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp " directory to place swap files in
set fileformats=unix,dos,mac " support all three, in this order
set iskeyword+=_,$,@,%,# " none of these are word dividers 
set mouse=a " use mouse everywhere
set noerrorbells " don't make noise

set incsearch " BUT do highlight as you type you 
set laststatus=2 " always show the status line
set linespace=0 " insert extra pixel lines 

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set number " turn on line numbers

" Set tab and shift-tab for moving between tabs
nmap <Tab> gt
nmap <S-Tab> gT

" use two spaces for ruby files
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 expandtab
" make requires real tabs
autocmd FileType make setlocal noexpandtab shiftwidth=8
" WordPress likes real tabs, so let's assume all php is that way
autocmd FileType php setlocal noexpandtab shiftwidth=4


" When vimrc is edited, reload it
" if you install this somewhere other than ~/.vim, you'll need to change the
" last argument
autocmd! bufwritepost vimrc source ~/.vim/vimrc

" Map ctrl-j and ctrl-k to go to the next file down and up respectively when
" editing in split mode.
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h
map <C-L> <C-W>l

:let NERDTreeQuitOnOpen = 0
nnoremap <Leader>d :let NERDTreeQuitOnOpen = 0<bar>NERDTreeToggle<CR>
nnoremap <Leader>D :let NERDTreeQuitOnOpen = 1<bar>NERDTreeToggle<CR>

nnoremap <C-O> :tabnew<bar> :let NERDTreeQuitOnOpen = 1<bar>NERDTree<CR>
nnoremap <C-N> :tabnew 
