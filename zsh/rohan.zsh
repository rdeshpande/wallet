KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  $KEYCHAIN_PATH -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

# COREUTILS
source /usr/local/Cellar/coreutils/8.11/aliases

## ALIAS
alias cpd="cap production deploy"
alias pgstart="sudo -u postgres pg_ctl -D /usr/local/var/postgres start"
alias s='sudo'
alias l='gls -GHCl --color=auto'
alias ls='gls -GHCF --color=auto'
alias bi='bundle install'
alias be='bundle exec'
alias gap="git add -e"
alias gca="git commit -a -v"
alias sc="script/rails console"
alias ss="script/rails server"
alias git=hub
alias g="git"
alias gph="git push heroku"
alias hdb="heroku run rake db:migrate"
alias ..="cd .."
alias ...="cd ..."
alias socks="ssh -C2qTnN -D 8080"
alias h="heroku"

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

. ~/bin/z
function precmd () {
  z --add "$(pwd -P)"
}
