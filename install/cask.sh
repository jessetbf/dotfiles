# Install Caskroom

brew tap caskroom/cask
brew install cask
brew tap caskroom/versions

# Install packages

apps=(
  1password
  android-file-transfer
  bettertouchtool
  atom
  cyberduck
  dash
  firefox
  flux
  gasmask
  gitkraken
  glimmerblocker
  google-chrome
  google-drive
  imageoptim
  iterm2
  java
  jumpcut
  mamp
  mucommander
  nextcloud
  osxfuse
  p4merge
  sequel-pro
  slack
  synergy
  textual
  vagrant
  veracrypt
  virtualbox
  vlc
)

brew cask install "${apps[@]}"
