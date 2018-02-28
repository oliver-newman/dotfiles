# Expand aliases within here (and in all bash scripts)
shopt -s expand_aliases

# Check if dotfiles are out of date
$HOME/dotfiles/check-dotfiles-modified.sh

# Source external config files
for file in ~/.{bash_aliases}; do
  if [[ -e "$file" ]] && [[ -f "$file" ]]; then # If file exists and is readable
    source "$file";
  fi
done
unset file;

# bash completion
if which brew > /dev/null && [[ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [[ -f "/etc/bash_completion" ]]; then
  source /etc/bash_completion;
fi;

# Use vim as default editor
export EDITOR=vim

# Setup for autoenv
if `which activate.sh`; then
  source `which activate.sh`;
fi;

# Don't create Python *.pyc files or __pycache__
export PYTHONDONTWRITEBYTECODE=1

# Setting path for Go workspace
export GOPATH=$HOME/go

# rvm
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  source $HOME/.rvm/scripts/rvm;
fi

# Terminal coloring
export CLICOLOR=1
export LS_COLORS='rs=0:di=1;36:ln=1;35:mh=0:pi=40;33:ex=1;31'

# ALIASES
#———————————————————————————————————————————————————————————————————————————————
alias ls="ls -F"
alias la="ls -A"
alias ll="ls -lh"
alias lal="ls -Al"
alias grep="grep --color=always"
alias python="python3"
alias pip="pip3"
alias ipaddr="lynx -dump http://www.whatismyip.org"
alias dc="docker-compose"
alias pr="pipenv run"
alias pdflatex="pdflatex -interaction=batchmode"
alias tmux-source="tmux source-file ~/.tmux.conf"
alias swat="ssh onewman1@lab.cs.swarthmore.edu"
alias heron="ssh onewman1@heron.sccs.swarthmore.edu"
alias gwaihir="ssh s-onewman1@gwaihir.sccs.swarthmore.edu"
alias ed="ssh -X s1689884@bruegel.inf.ed.ac.uk -t 'ssh -X student.login -t \"tmux new-session\" '"
# alias thefuck, if it is installed
thefuck -v >/dev/null 2>&1 && eval $(thefuck --alias)
# source: https://stackoverflow.com/questions/2421011/output-of-git-branch-in-tree-like-fashion
git config --global alias.lgb "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"

# Discourage git commit -a option
# Source: https://stackoverflow.com/a/22160650/6740397
git() {
  for arg
  do
    if [[ $arg == -a* || $arg == -[^-]*a* ]]
    then
      annoy_me
      return 1
    fi
  done
  command git "$@"
}
annoy_me() { 
  echo "Stop using -a, $USER!" 
  echo "You are now in time out."
  settings=$(stty -g)        
  stty raw
  sleep 15
  stty "$settings"
}
#———————————————————————————————————————————————————————————————————————————————

export PS1="\[\033[0;32m\]\u\[\033[0m\]:\[\033[0;36m\]\W\[\033[0m\]\$ "
export PS2="more\[\033[0;36m\]>"

# added by travis gem
[ -f /Users/Oliver/.travis/travis.sh ] && source /Users/Oliver/.travis/travis.sh
