#!/usr/bin/env bash

# Allow software install from anywhere
sudo spctl --master-disable

# Software Update
echo Running Software Update
sudo softwareupdate -i -a

#Install Xcode
echo Installing xcode-select
xcode-select --install

ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/topplestack

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/runcom/.bashrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.mkshrc" ~
ln -sfv "$DOTFILES_DIR/runcom/.profile" ~
ln -sfv "$DOTFILES_DIR/runcom/.zlogin" ~
ln -sfv "$DOTFILES_DIR/runcom/.zshrc" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages
. "$DOTFILES_DIR/install/brew.sh"
#. "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/pip.sh"

if [ "$(uname)" == "Darwin" ]; then
  . "$DOTFILES_DIR/install/cask.sh"
  . "$DOTFILES_DIR/install/gem.sh"
  . "$DOTFILES_DIR/osx/defaults.sh"
  . "$DOTFILES_DIR/osx/defaults-chrome.sh"
  ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
fi
