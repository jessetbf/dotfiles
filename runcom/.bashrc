
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

function sql-dump() {
  drush @loc.$2 sql-dump --gzip --skip-tables-list=accesslog,cache,cache_*,history,search_*,sessions,watchdog --result-file=/var/www/$1/$2.sql
}


export PATH="$PATH:/Applications/DevDesktop/tools"

export PATH="$PATH:/Applications/DevDesktop/drush_9"

alias composer='php -d memory_limit=-1 ~/.composer/composer.json $1'
