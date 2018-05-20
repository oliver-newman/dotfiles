set PATH (pyenv root)/shims $PATH

set -g theme_nerd_fonts no  # nerd fonts look cheesy
set -g theme_date_format '+%a %l:%M:%S %p'
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked no
set -g theme_display_k8s_context no
set -gx LSCOLORS gxfxcxdxbxegedabagacad
set -gx fish_color_autosuggestion '555'
set -gx PYTHONDONTWRITEBYTECODE 1

# thefuck alias
thefuck --alias | source

# Homebrew command-not-found
brew command command-not-found-init > /dev/null 2>&1; and . (brew command-not-found-init)

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# Pyenv
status --is-interactive; and command -s pyenv > /dev/null; and source (pyenv init -|psub)

source ~/.config/fish/aliases.fish
