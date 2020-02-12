#!/usr/bin/env bash

# Allow software install from anywhere
sudo spctl --master-disable

# Software Update
echo Running Software Update
sudo softwareupdate -i -a

#Install Xcode
echo Installing xcode-select
xcode-select --install

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
ln -sfv "$DOTFILES_DIR/runcom/.aliases" ~
ln -sfv "$DOTFILES_DIR/runcom/.bash_profile"
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

# Package managers & packages
. "$DOTFILES_DIR/install/brew.sh"
#. "$DOTFILES_DIR/install/bash.sh"
. "$DOTFILES_DIR/install/npm.sh"
. "$DOTFILES_DIR/install/pip.sh"
. "$DOTFILES_DIR/install/zsh.sh"
. "$DOTFILES_DIR/install/vagrant.sh"

if [ "$(uname)" == "Darwin" ]; then
. "$DOTFILES_DIR/install/cask.sh"
. "$DOTFILES_DIR/install/gem.sh"
. "$DOTFILES_DIR/install/mas.sh"
#. "$DOTFILES_DIR/osx/defaults.sh"
. "$DOTFILES_DIR/osx/defaults-chrome.sh"
# ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
fi

echo "Checking for ssh key"
key="~/.ssh/id_rsa.pub"
if [ -f "$key"]; then
  echo "ssh key already exists, skipping"
else
  echo "ssh key does not exist, generating one now"
  ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa
fi
