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

abbr dc 'docker-compose'
abbr pr 'pipenv run'

# git abbrevations
abbr g git
abbr ga 'git add'
abbr gb 'git branch'
abbr gc 'git commit'
abbr gcm 'git commit -m'
abbr gca 'git commit --amend'
abbr gco 'git checkout'
abbr gcom 'git checkout master'
abbr gd 'git diff'
abbr gpl 'git pull'
abbr gp 'git push'
abbr grm 'git rm'
abbr gs 'git status'
