#!/usr/bin/env bash

# Install zsh config
apps=(
  zsh
)
brew install "${apps[@]}"

if [sudo grep -l $(which zsh) /etc/shells]; then
  echo "homebrew zsh already in /etc/shells"
else
  echo "Adding homebrew zsh to /etc/shells"
  sudo sh -c "echo '$(which zsh)' >> /etc/shells"
  chsh -s $(which zsh)
fi
