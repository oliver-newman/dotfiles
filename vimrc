"-------------------------------------------------------------------------------
" vimrc
" Author: Oliver Newman (with input from many, many sources)
"-------------------------------------------------------------------------------
" Vundle stuff
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-latex/vim-latex'
Plugin 'tpope/vim-liquid'
Plugin 'digitaltoad/vim-pug'
Plugin 'tikhomirov/vim-glsl'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" syntastic syntax checkers
let g:syntastic_python_checkers=['python']
let g:syntastic_c_checkers=[]
let g:syntastic_cpp_checkers=[]

" nerdcommenter space after comment delimiter
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {'python': {'left': '#'}}


" colorscheme
set term=screen-256color
syntax on
colorscheme umber-green

" show line numbers, with no space between numbers and left edge of window
set number
set numberwidth=1

" highlight 81st character of lines
highlight colorcolumn ctermbg=235 guibg=#2c2d27
" highlight all columns of lines beyond 80 characters
let &colorcolumn="81,".join(range(81,81),",")


" automatically copy to system clipboard
set clipboard=unnamed

" display the current mode and partially-typed commands in the status line
set showmode
set showcmd

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2

" Rich and PEP 8 say 4 spaces....uncomment this is you want 4 spaces
set shiftround
set expandtab
set autoindent

" makes searches case-insensitive, unless they contain upper-case letters
set ignorecase
set smartcase


" let jk exit from insert mode
inoremap jk <Esc>

" up and down moves go through wrapped lines, instead of skipping them
nnoremap k gk
nnoremap j gj

" enable paging up and down using space and shift-space
nnoremap <space> <c-d>
nnoremap <s-space> <c-u>

" let Ctrl-I instead of Ctrl-A do incrementation; Ctrl-A was causing many
" accidental changes to do overlap with tmux prefix
nnoremap <c-i> <c-a>
nnoremap <c-a> <Esc>

" make backspace work like most other apps
set backspace=indent,eol,start

" allow 'incrementing' of letters with Ctrl-I
set nf=octal,hex,alpha
