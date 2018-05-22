abbr c pbcopy
abbr p pbpaste
abbr dc docker-compose
abbr pr 'pipenv run'
abbr prp 'pipenv run python'
abbr em emojify

abbr kc kubectl

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
abbr gcp 'git cherry-pick'
abbr gd 'git diff -D'
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
abbr gshl 'git stash list'

function battery -d 'Print battery percent and time remaining'
  pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d';'
  pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f3 -d';'
end

function gi -d 'Output a .gitignore file the specified language/project'
  curl -L -s https://www.gitignore.io/api/$argv
end

function ip -d 'Print my IP address'
  dig +short myip.opendns.com @resolver1.opendns.com
end

function lock -d 'Lock the screen (Mac-only)'
  /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
end

function py -d 'Activate ipython'
  ipython $argv
end

function src -d 'Source the fish config file'
  source ~/.config/fish/config.fish
end
