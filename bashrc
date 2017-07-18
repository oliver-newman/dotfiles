# Expand aliases within here (and in all bash scripts)
shopt -s expand_aliases

# Source external config files
for file in ~/.{bash_aliases,path}; do
  if [ -r "$file" ] && [ -f "$file" ]; then # If file exists and is readable
    source "$file";
  fi
done
unset file;

# For Python autoenv
source `which activate.sh`

export EDITOR=vim

# Setting path for Go workspace
export GOPATH=$HOME/go

# Gem paths
export GEM_HOME=$HOME/.gem
export GEM_PATH=$HOME/.gem

# git auto-completion script
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Terminal coloring
export CLICOLOR=1
export LS_COLORS='rs=0:di=1;36:ln=1;35:mh=0:pi=40;33:ex=1;31'

# ALIASES
#———————————————————————————————————————————————————————————————————————————————
alias ls="ls -F"
alias la="ls -A"
alias ll="ls -l"
alias lal="ls -Al"
alias grep="grep --color=always"
alias python="python3"
alias pip="pip3"
alias ipaddr="lynx -dump http://www.whatismyip.org"
alias pdflatex="pdflatex -interaction=batchmode"
alias tmux-source="tmux source-file ~/.tmux.conf"
alias swat="ssh onewman1@lab.cs.swarthmore.edu"
alias heron="ssh onewman1@heron.sccs.swarthmore.edu"
alias gwaihir="ssh s-onewman1@gwaihir.sccs.swarthmore.edu"
alias ed="ssh -X s1689884@schiff.inf.ed.ac.uk -t 'ssh -X student.login -t \"tmux new-session\" '"
#———————————————————————————————————————————————————————————————————————————————

export PS1="\[\033[0;32m\]\u\[\033[0m\]:\[\033[0;36m\]\W\[\033[0m\]\$ "
export PS2="more\[\033[0;36m\]>"
