#!/bin/bash

# Use to write to the top of the file
echo "Adding PATHS to top of file"
gsed -i '1 i\export PATH=/opt/homebrew/bin:$PATH' ~/.zshrc
gsed -i '1 i\export PATH=/usr/local/bin:$PATH/' ~/.zshrc

# CHANGE THEME
# Just change the first THEME variable to whatever theme you want. 
# The line will edit, reload and print you the changed line in the 
# .zshrc file
echo "Setting OMZ theme"
THEME="cypher"; gsed -i s/^ZSH_THEME=".\+"$/ZSH_THEME=\"$THEME\"/g ~/.zshrc && source ~/.zshrc && echo "Edited line in ~/zshrc :" && cat ~/.zshrc | grep -m 1 ZSH_THEME

echo "Sourcing plugins"
echo "source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
echo "source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

echo "Installing zsh syntax highlighting"
brew install zsh-syntax-highlighting

echo "Installing zsh autosuggestions"
brew install zsh-autosuggestions

source ~/.zshrc
