#!/bin/bash

# Install homebrew
echo "Starting bootstrapping"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    # Install Homebrew (if not installed)
  echo "Installing Homebrew."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'export PATH=/opt/homebrew/bin:$PATH' > ~/.zshrc
  echo 'export PATH=/usr/local/bin:$PATH' >> ~/.zshrc
  
  source ~/.zshrc
  
  # Make sure we’re using the latest Homebrew.
  brew update

  # Upgrade any already-installed formulae.
  brew upgrade

  # Save Homebrew’s installed location.
  BREW_PREFIX=$(brew --prefix)

  # Installs Casks
  brew tap homebrew/cask

  ## Apps I use
  brew install --cask 1password
  brew install alfred
  brew install --cask clipy
  brew cask install docker
  # brew install dropbox
  brew install --cask figma
  brew install git
  # brew install google-backup-and-sync
  brew install gnu-sed
  brew install google-chrome #Chrome
  # brew install google-drive
  brew install homebrew/cask-versions/firefox-nightly # Nightly
  brew install homebrew/cask-versions/google-chrome-canary # Chrome Canary
  brew install mysql
  brew install --cask mysqlworkbench
  brew install notion
  brew install nvm
  brew install --cask postman
  brew install --cask rectangle
  brew install --cask rocket-chat
  brew install slack
  brew install tree
  brew install visual-studio-code
  brew install yarn
  brew install zoom

  # Remove outdated versions from the cellar.
  brew cleanup

fi

