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
  kindle
  mamp
  macdown
  mucommander
  nextcloud
  opera
  osxfuse
  p4merge
  sequel-pro
  slack
  sourcetree
  synergy
  textual
  vagrant
  vectr
  veracrypt
  virtualbox
  vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
