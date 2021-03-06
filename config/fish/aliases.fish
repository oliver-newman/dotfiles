abbr c pbcopy
abbr p pbpaste
abbr tm tmux
abbr dc docker-compose
abbr pr 'pipenv run'
abbr prp 'pipenv run python'
abbr be 'bundle exec'
abbr em emojify
abbr nvm fnm
abbr m make
abbr kc kubectl
abbr vim nvim
abbr cn 'code -n .'
abbr ans ansible
abbr anspb ansible-playbook
abbr ts trash
abbr we withenv

# git abbrevations
abbr g git
abbr ga 'git add'
abbr gb 'git branch'
abbr gbd 'git branch -D'
abbr gc 'git commit'
abbr gcm 'git commit -m'
abbr gca 'git commit --amend'
abbr gco 'git checkout'
abbr gcom 'git checkout master'
abbr gcp 'git cherry-pick'
abbr gd 'git diff -D'
abbr gf 'git fetch'
abbr gl 'git log'
abbr gm 'git merge'
abbr gpl 'git pull'
abbr gps 'git push'
abbr gpsf 'git push -f'
abbr gpsn 'git push --no-verify'
abbr gpss 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
abbr grm 'git rm'
abbr grb 'git rebase'
abbr grbc 'git rebase --continue'
abbr grba 'git rebase --abort'
abbr gs 'git status'
abbr gsh 'git stash'
abbr gsha 'git stash apply'
abbr gshd 'git stash drop'
abbr gshp 'git stash pop'
abbr gshs 'git stash save'
abbr gshl 'git sl'
abbr gu 'git unstage'
abbr gwt 'git worktree'

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

function did -d 'Read/write ~/did.md'
  set didfile ~/did.md
  if not test -e $didfile
    touch $didfile
  end

  set today (date '+%a, %d %B %Y')
  if not rg $today $didfile > /dev/null
    echo "## $today" >> $didfile
  end

  if [ (count $argv) != '0' ]
    echo "- $argv" >> $didfile
    set bold (tput bold)
    set notbold (tput sgr0)
    echo "$bold""done:$notbold $argv"
  else
    nvim $didfile; or vim $didfile
  end
end

function add_to_path --description 'Persistently prepend paths to $PATH'
  set --universal fish_user_paths $fish_user_paths $argv
end

# Installing Homebrew packages that depend on Python can go wrong if using a
# Pyenv-installed Python.
function brew -d 'Run Homebrew while using the system Python'
  env PYENV_VERSION=system brew $argv
end

function az -d 'Run Azure CLI commands using the system Python'
  env PYENV_VERSION=system az $argv
end

function add
  paste -sd+ - | bc
end

function git --wraps hub --description 'Alias for hub, which wraps git to provide extra functionality with GitHub.'
  hub $argv
end

function psource -d 'Source a posix-formatted .env file'
  for line in (cat $argv)
    set assignment (string replace 'export ' '' $line)
    set arr (echo $assignment | tr = \n)
    set -gx $arr[1] $arr[2]
  end
end

function withenv -d 'Run the command a subshell with a .env file sourced'
  set env_file $argv[1]
  set cmd $argv[2..-1]
  fish -c "psource $env_file; and $cmd"
end
