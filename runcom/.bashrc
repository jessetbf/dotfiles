
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# Load MAMP into path
export PATH=/Applications/MAMP/Library/bin/:$PATH
export PATH=/Applications/MAMP/bin/php/php7.3.9/bin:$PATH

alias php='/Applications/MAMP/bin/php/php7.3.9/bin/php -c "/Library/Application Support/appsolute/MAMP PRO/conf/php7.3.9.ini"'
alias pear='/Applications/MAMP/bin/php/php7.3.9/bin/pear'
alias pecl='/Applications/MAMP/bin/php/php7.3.9/bin/pecl'

source ~/.bash_profile
