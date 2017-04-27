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
  dash
  firefox
  flux
  glimmerblocker
  google-chrome
  google-drive
  imageoptim
  iterm2
  jumpcut
  kindle
  macdown
  opera
  osxfuse
  owncloud
  p4merge
  qbittorrent
  sequel-pro
  slack
  skyfonts
  sourcetree
  synergy
  textual
  vagrant
  vectr
  veracrypt
  virtualbox
  vlc
  vmware-fusion
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
