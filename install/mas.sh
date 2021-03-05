#!/usr/bin/env bash

# Install mas-cli https://github.com/mas-cli/mas
brew install mas

mas signin topplestack@gmail.com

# Install packages
apps=(
  417375580 #BetterSnapTool
  409183694 #Keynote
  409201541 #Pages
)

mas install "${apps[@]}"
