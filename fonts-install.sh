#!/bin/bash

brew tap  homebrew/cask-fonts
brew cask install \
  font-fira-code \
  font-fira-mono \
  font-fira-mono-for-powerline \
  font-fira-sans

source ~/.zshrc