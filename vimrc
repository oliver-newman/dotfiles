"-------------------------------------------------------------------------------
" vimrc
" Author: Oliver Newman (with input from many, many sources)
"-------------------------------------------------------------------------------
" Vundle breaks in fish shell without this.
set shell=/bin/bash

" Plugin (vundle) stuff

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-latex/vim-latex'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-surround'
Plugin 'dahu/vim-fanfingtastic'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'leafgarland/typescript-vim'
Plugin 'dag/vim-fish'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'ambv/black'
Plugin 'chr4/nginx.vim'
Plugin 'keith/swift.vim'
Plugin 'cespare/vim-toml'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"-------------------------------------------------------------------------------

" syntax highlighting for code snippet in markdown
let g:markdown_fenced_languages = ['java', 'c', 'html', 'python', 'bash=sh']

" syntastic syntax checkers
let g:syntastic_python_checkers = ['python']
let g:syntastic_c_checkers = []
let g:syntastic_cpp_checkers = []

" syntastic shortcuts
cabbrev sr SyntasticReset
cabbrev pl SyntasticCheck pylint

" automatically close ycm function preview window after leaving insert mode
let g:ycm_autoclose_preview_window_after_insertion = 1

" disable annoying warning in erb files
let g:syntastic_eruby_ruby_quiet_messages =
        \ {'regex': 'possibly useless use of a variable in void context'}

" nerdcommenter space after comment delimiter
let g:NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {'python': {'left': '#'}}

" gitgutter key mappings
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hr <Plug>GitGutterUndoHunk

" update gitgutter in (almost) real time
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
set updatetime=250

"-------------------------------------------------------------------------------
" Appearance

set lazyredraw

" display the current mode and partially-typed commands in the status line
set showmode
set showcmd

" colorscheme
set t_Co=256  " Note: Neovim ignores t_Co and other terminal codes.
syntax on
colorscheme umber-green

" show line numbers, with no space between numbers and left edge of window
set number
set numberwidth=1

" highlight 81st character of lines
highlight colorcolumn ctermbg=235 guibg=#2c2d27
" highlight all columns of lines beyond 80 characters
let &colorcolumn = "81,".join(range(81,81),",")

" highlight trailing whitespace in red when not in insert mode
" source: http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"-------------------------------------------------------------------------------
" Behavior

" automatically copy to system clipboard
set clipboard=unnamed

" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2

" makes searches case-insensitive, unless they contain upper-case letters
set smartcase

" spell-checking for .md files
autocmd FileType markdown set spell spelllang=en_us

"-------------------------------------------------------------------------------
" Keyboard stuff

" Alt-f -> Format Python code
nmap ƒ :Black<CR>

" let jk exit from insert mode
inoremap jk <Esc>

" up and down moves go through wrapped lines, instead of skipping them
map k gk
map j gj

" use H and L for indenting/unindenting
map H <<<Esc>
map L >><Esc>

" enable folding/unfolding with space
nnoremap <space> za

" let Ctrl-I instead of Ctrl-A do incrementation; Ctrl-A was causing many
" accidental changes due to overlap with tmux prefix
nnoremap <c-i> <c-a>
nnoremap <c-a> <Esc>

" let Ctrl-L clear highlights from last search
nnoremap <C-L> :nohlsearch<CR><C-L>

" make backspace work like most other apps
set backspace=indent,eol,start

" allow 'incrementing' of letters with Ctrl-I
set nf=octal,hex,alpha

" allow mouse scrolling (in *a*ll modes)
set mouse=a

"-------------------------------------------------------------------------------
" EasyMotion

" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Use EasyMotion for normal search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

"-------------------------------------------------------------------------------
