KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  $KEYCHAIN_PATH -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

## ALIAS
alias cpd="cap production deploy:migrations"
alias csd="cap staging deploy:migrations"
alias s='sudo'
alias bi='bundle install'
alias be='bundle exec'
alias gca="git commit -a -v"
alias sc="rails console"
alias ss="rails server"
alias g="git"
alias gph="git push heroku"
alias hdb="heroku run rake db:migrate"
alias ..="cd .."
alias ...="cd ..."
alias mig="bundle exec rake db:migrate"
alias bs="bundle exec rspec"

set -o vi
bindkey '^R' history-incremental-search-backward

# SETTINGS
export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=en_US.UTF-8
export DISABLE_CORRECTION="true"

# Work related stuff
[[ -s "$HOME/.zsh/work.zsh" ]] && source "$HOME/.zsh/work.zsh"

. `brew --prefix`/etc/profile.d/z.sh

PATH=~/bin:$PATH

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
