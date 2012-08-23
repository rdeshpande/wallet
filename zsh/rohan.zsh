KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  $KEYCHAIN_PATH -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

## ALIAS
alias cpd="cap production deploy:migrations"
alias cpd="cap staging deploy:migrations"
alias s='sudo'
alias bi='bundle install'
alias be='bundle exec'
alias gap="git add -e"
alias gca="git commit -a -v"
alias sc="script/rails console"
alias ss="script/rails server"
alias g="git"
alias gph="git push heroku"
alias hdb="heroku run rake db:migrate"
alias beg="bundle exec guard"
alias ..="cd .."
alias ...="cd ..."
alias mig="bundle exec rake db:migrate"
alias bs="bundle exec rspec"

# PW MANAGER
PW_PATH="~/.pw.yml"
alias pw="gpg ~/.pw.yml.gpg && cat ~/.pw.yml && rm -f ~/.pw.yml"
alias pwe="gpg ~/.pw.yml.gpg && rm ~/.pw.yml.gpg && vi ~/.pw.yml; gpg -c ~/.pw.yml && rm -f ~/.pw.yml"

# SETTINGS
export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=en_US.UTF-8
bindkey -e

# Work related stuff
[[ -s "$HOME/.zsh/work.zsh" ]] && source "$HOME/.zsh/work.zsh"

. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
  z --add "$(pwd -P)"
}
