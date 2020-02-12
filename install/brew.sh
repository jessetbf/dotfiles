# Install Homebrew

# Install packages
apps=(
  ansible
  composer
  coreutils
  cmake
  diff-so-fancy
  dockutil
  ffmpeg
  git
  gnu-sed
  grep
  hub
  httpie
  imagemagick
  jq
  mackup
  mysql
  node
  ntfs-3g
  peco
  psgrep
  python
  php@7.3
  shellcheck
  ssh-copy-id
  tree
  vim
  wget
  wifi-password
)

brew install "${apps[@]}"
