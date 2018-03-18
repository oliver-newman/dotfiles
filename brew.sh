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
if ! fgrep -q '/usr/local/bin/fish' /etc/shells; then
  echo '/usr/local/bin/fish' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/fish;
fi;

# Install `wget`
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
brew install git
brew install rename
brew install tree
brew install httpie
brew install pyenv && pyenv install 3.6.4 && pyenv global 3.6.4

# Other
brew install fzf
brew install fish
brew install node
brew install ripgrep

brew tap homebrew/command-not-found

# Remove outdated versions from the cellar.
brew cleanup
