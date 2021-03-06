#!/usr/bin/env bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew

# Install packages
apps=(
  ansible
#  composer
  coreutils
  cmake
  diff-so-fancy
  dockutil
  ffmpeg
  git
  git-flow-avh
  gnu-sed
  grep
  hub
  httpie
  imagemagick
  jq
  mackup
  node
  ntfs-3g
  peco
  psgrep
  python
  shellcheck
#  ssh-copy-id
  tree
#  vim
  wget
  wifi-password
)

brew install "${apps[@]}"
