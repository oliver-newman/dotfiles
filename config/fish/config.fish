eval (python -m virtualfish)

set PATH (pyenv root)/shims $PATH

set -g theme_display_git_untracked no
set -gx LSCOLORS gxfxcxdxbxegedabagacad
set -gx fish_color_autosuggestion '555'

if status --is-login
    export PYTHONDONTWRITEBYTECODE=1
end

thefuck --alias | source
brew command command-not-found-init > /dev/null 2>&1; and . (brew command-not-found-init)
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
