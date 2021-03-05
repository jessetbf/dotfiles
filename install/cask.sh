# Install Caskroom

brew install cask

# Install packages

apps=(
  1password
  android-file-transfer
  bettertouchtool
  atom
  cyberduck
  dash
  dropbox
  firefox
  flux
  gas-mask
  gitkraken
  iterm2
  java
  jumpcut
  karabiner-elements
  mamp
  mysqlworkbench
  mucommander
  nextcloud
  osxfuse
  sequel-pro
  slack
  spectrum
  synergy
  textual
  vagrant
  veracrypt
  virtualbox
  visual-studio-code
)

brew cask install "${apps[@]}"
