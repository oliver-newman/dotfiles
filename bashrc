export XUGGLE_HOME="/usr/local/xuggler"

export DYLD_LIBRARY_PATH="/Applications/Tracker/Xuggle/lib"

export TRACKER_HOME="/usr/local/tracker"

##
# Your previous /Users/Oliver/.bash_profile file was backed up as 
# /Users/Oliver/.bash_profile.macports-saved_2016-02-28_at_23:33:14
##

# MacPorts Installer addition on 2016-02-28_at_23:33:14: adding an appropriate 
# PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:${PATH}"
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for homemade bash scripts
export PATH="${PATH}:~/scripts"

# Setting path for Go workspace
export GOPATH=$HOME/go

# ALIASES
#———————————————————————————————————————————————————————————————————————————————
alias vim="/usr/local/bin/vim"
alias git=hub # Uses Hub for extra GitHub features
alias dt="cd ~/Desktop"
alias swat="ssh onewman1@lab.cs.swarthmore.edu"
alias safari="open"
alias heron="ssh onewman1@heron.sccs.swarthmore.edu"
alias gwaihir="ssh s-onewman1@gwaihir.sccs.swarthmore.edu"
alias aws="ssh -i "/Users/Oliver/.ssh/oliverKeyPair.pem" ec2-user@ec2-54-205-109-20.compute-1.amazonaws.com"
#———————————————————————————————————————————————————————————————————————————————

export PS1="\[\033[0;32m\]\u\[\033[0m\]:\[\033[0;36m\]\W\[\033[0m\]\$ "
export PS2="more\[\033[0;36m\]>"

# Terminal coloring
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
