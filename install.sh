#!/usr/bin/env bash

# Install command-line tools using Homebrew.
# from https://github.com/mathiasbynens/dotfiles

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion

# Switch to using fish as default shell
brew install fish
if ! grep -F -q '/usr/local/bin/fish' /etc/shells; then
  echo '/usr/local/bin/fish' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/fish;
  curl -L https://get.oh-my.fish | fish
fi;

brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install tmux
brew install reattach-to-user-namespace

# Install font tools.
brew tap bramstein/webfonttools
brew install woff2

# Install other useful binaries.
brew install ack
brew install tree
brew install httpie

# Pyenv
brew install pyenv
pyenv install 3.6.5
pyenv global 3.6.5
git clone git://github.com/pyenv/pyenv-update.git ~/.pyenv/plugins/pyenv-update

# Pipenv
brew install pipenv

# Shell script linting
brew install shellcheck

# Useful alternatives to Unix builtins
brew install ripgrep
brew install fd

# Fun stuff
brew install howdoi
brew install thefuck
brew install autojump
brew install git-open
brew install emojify

# If a command isn't found but can be downloaded via Homebrew, let me know
brew tap homebrew/command-not-found

# Remove outdated versions from the cellar.
brew cleanup
