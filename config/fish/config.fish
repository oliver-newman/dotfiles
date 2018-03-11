eval (python -m virtualfish)

set -g theme_display_git_untracked no
set -gx LSCOLORS gxfxcxdxbxegedabagacad
set -gx fish_color_autosuggestion '555'

if status --is-login
    export PYTHONDONTWRITEBYTECODE=1
end

thefuck --alias | source
