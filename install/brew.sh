# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew update
brew upgrade

# Install packages
apps=(
  ansible
  coreutils
  cmake
  dockutil
  ffmpeg
  git
  gnu-sed --with-default-names
  grep --with-default-names
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
  ssh-copy-id
  svn
  tree
  vim
  wget
  wifi-password
)

brew install "${apps[@]}"
