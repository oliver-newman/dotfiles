for file in ~/.{path,aliases}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Setting path for Go workspace
export GOPATH=$HOME/go

# Terminal colorscheme
export LS_COLORS='rs=0:di=01;36:ln=01;35:mh=00:pi=40;33:ex=01;31'

# ALIASES
#———————————————————————————————————————————————————————————————————————————————
alias ls="ls --color=auto"
alias la="ls -A"
alias ll="ls -l"
alias lal="ls -Al"
alias grep="grep --color=always"
alias dt="cd ~/Desktop"
alias swat="ssh onewman1@lab.cs.swarthmore.edu"
alias heron="ssh onewman1@heron.sccs.swarthmore.edu"
alias gwaihir="ssh s-onewman1@gwaihir.sccs.swarthmore.edu"
alias pdflatex="pdflatex -interaction=batchmode"
alias tmux-source="tmux source-file ~/.tmux.conf"
alias python="python3"
alias python2="\\python"
#———————————————————————————————————————————————————————————————————————————————

export PS1="\[\033[0;32m\]\u\[\033[0m\]:\[\033[0;36m\]\W\[\033[0m\]\$ "
export PS2="more\[\033[0;36m\]>"

# Terminal coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
