""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc file
"
syntax on
colorscheme umber-green
"
" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities
" set wildmode=list:longest,full
"
" display the current mode and partially-typed commands in the status line
set showmode
set showcmd
"
" show file name and line number in status line, always
"set statusline=%f%=%l/%L
"set laststatus=2
"
" use indents of 2 spaces, and have them copied down lines:
set shiftwidth=2
"
" Rich and PEP 8 say 4 spaces....uncomment this is you want 4 spaces
" set shiftwidth=4
set shiftround
set expandtab
set autoindent
"
" show line numbers, with no space between numbers and left edge of window
set number
set numberwidth=1
"
" highlight 81st character of lines
highlight colorcolumn ctermbg=235 guibg=#2c2d27
"
"highlight all columns of lines beyond 80 characters
let &colorcolumn="81,".join(range(81,81),",")
"
" enable filetype detection
filetype on
filetype indent on
filetype plugin on
"
" in human-language files, automatically format everything at 72 chars:
autocmd FileType mail,human set formatoptions+=t textwidth=72
"
" for C-like programming, have automatic indentation
autocmd Filetype c set formatoptions+=ro
"
" for Perl programming, have things in braces indenting themselves
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2
"
" Python tab size
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
"
" Django syntax highlighting in HTML files
"au BufNewFile,BufRead *.html set filetype=htmldjango
"
" for HTML, generally format text, but if a long line has been created leave
" it alone when editing
autocmd FileType html set formatoptions+=tl
"
" for both CSS and HTML, use genuine tab characters for indentation, to make
" files a few bytes smaller:
autocmd FileType html,css set noexpandtab tabstop=2
"
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
autocmd FileType javascript set sts=2
"
" in makesfiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all intends are tabs
" (despite the mappings later)
autocmd FileType make set noexpandtab shiftwidth=8
"
" makes searches case-insensitive, unless they contain upper-case letters
set ignorecase
set smartcase
"
" let jj exit from insert mode
inoremap jj <Esc>
"
" up and down moves go through wrapped lines, instead of skipping them
nnoremap k gk
nnoremap j gj
"
" make backspace work like most other apps
set backspace=indent,eol,start
"
execute pathogen#infect()
" end .vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
