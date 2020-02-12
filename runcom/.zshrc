source $(brew --prefix nvm)/nvm.sh
source ~/.dotfiles/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Install bundles from default repo (oh-my-zsh)
antigen bundle brew
antigen bundle cask
antigen bundle command-not-found
antigen bundle composer
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle jsontools
antigen bundle npm
antigen bundle osx
antigen bundle rvm
antigen bundle sudo
antigen bundle vagrant
antigen bundle web-search

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting

# Zsh Theme
antigen theme avit

# Tell antigen that you're done.
antigen apply

source "${HOME}/.aliases"
source "${HOME}/.bash_profile"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# Add /usr/local/sbin to path
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
