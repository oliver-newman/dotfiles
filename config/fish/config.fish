thefuck --alias | source
eval (pipenv --completion)
set -g fish_user_paths $fish_user_paths "/usr/local/opt/icu4c/bin"
set -g fish_user_paths $fish_user_paths "/usr/local/opt/icu4c/sbin"
set BETTER_EXCEPTIONS
status --is-interactive; and source (rbenv init -|psub)
