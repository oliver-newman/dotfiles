PATH=/opt/local/bin:/opt/local/sbin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/TeX/texbin:~/scripts:/home/Oliver/bin:/usr/local/homebrew
export PATH

# Setting path for Go workspace
export GOPATH=$HOME/go

# ALIASES
#———————————————————————————————————————————————————————————————————————————————
alias ls="ls -F"
alias la="ls -A"
alias ll="ls -l"
alias lal="ls -Al"
alias dt="cd ~/Desktop"
alias swat="ssh onewman1@lab.cs.swarthmore.edu"
alias heron="ssh onewman1@heron.sccs.swarthmore.edu"
alias gwaihir="ssh s-onewman1@gwaihir.sccs.swarthmore.edu"
alias pdflatex="pdflatex -interaction=batchmode"
alias jb="bundle exec jekyll build"
alias tmux-source="tmux source-file ~/.tmux.conf"
alias mysql="/usr/local/mysql/bin/mysql"
alias mysqladmin="/usr/local/mysql/bin/mysqladmin"
alias python="python3"
alias python2="\\python"
#———————————————————————————————————————————————————————————————————————————————

export PS1="\[\033[0;32m\]\u\[\033[0m\]:\[\033[0;36m\]\W\[\033[0m\]\$ "
export PS2="more\[\033[0;36m\]>"

# Terminal coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
