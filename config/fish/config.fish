set -gx PYENV_ROOT $HOME/.pyenv

set -g theme_nerd_fonts no  # nerd fonts look cheesy
set -g theme_date_format '+%a %l:%M:%S %p'
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked no
set -g theme_display_k8s_context no

set -gx HOMEBREW_NO_AUTO_UPDATE 1

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# Pyenv
status --is-interactive; and command -s pyenv > /dev/null; and source (pyenv init -|psub)
set -gx PYTHON_VERSION 3.7.1

# Go
set -x GOPATH $HOME/go
set -x GOROOT /usr/local/opt/go/libexec

pyenv global $PYTHON_VERSION
# Pyenv
set -gx PYTHON_VERSION 3.7.2

source ~/.config/fish/aliases.fish
direnv hook fish | source

if status --is-login
  set -gx LSCOLORS gxfxcxdxbxegedabagacad
  set -gx fish_color_autosuggestion '555'
  set -gx PYTHONDONTWRITEBYTECODE 1
  set -gx PIPENV_SHELL_FANCY 1
  if command -s nvim > /dev/null
    set -gx EDITOR nvim
  else
    set -gx EDITOR vim
  end
end
