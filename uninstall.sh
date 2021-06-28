#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
rm -rf ~/.oh-my-zsh

# Empty zshrc file
echo "" > ~/.zshrc