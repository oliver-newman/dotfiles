set PATH (pyenv root)/shims $PATH

set -g theme_nerd_fonts no  # nerd fonts look cheesy
set -g theme_display_git_master_branch yes
set -g theme_display_git_untracked no
set -gx LSCOLORS gxfxcxdxbxegedabagacad
set -gx fish_color_autosuggestion '555'
set -gx PYTHONDONTWRITEBYTECODE 1

# thefuck alias
thefuck --alias | source

# Homebrew command-not-found
brew command command-not-found-init > /dev/null 2>&1; and . (brew command-not-found-init)

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

abbr c pbcopy
abbr p pbpaste
abbr dc docker-compose
abbr pr 'pipenv run'

# git abbrevations
abbr g git
abbr ga 'git add'
abbr gb 'git branch'
abbr gbd 'git branch -d'
abbr gc 'git commit'
abbr gcm 'git commit -m'
abbr gca 'git commit --amend'
abbr gco 'git checkout'
abbr gcom 'git checkout master'
abbr gd 'git diff'
abbr gl 'git log'
abbr gpl 'git pull'
abbr gps 'git push'
abbr grm 'git rm'
abbr grb 'git rebase'
abbr gs 'git status'
abbr gsh 'git stash'
abbr gsha 'git stash apply'
abbr gshd 'git stash drop'
abbr gshp 'git stash pop'
abbr gshs 'git stash save'
