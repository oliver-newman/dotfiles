" Source: https://sk1u.com/blog/2018/04/16/pyenv-neovim
let g:virtualenv = $PYENV_ROOT . '/versions/neovim-python3'
let g:python3_host_prog = g:virtualenv . '/bin/python'
let g:black_virtualenv = g:virtualenv
source ~/.vimrc
