
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Load MAMP into path
export PATH=/Applications/MAMP/Library/bin/:$PATH
export PATH=/Applications/MAMP/bin/php/php7.3.8/bin:$PATH
