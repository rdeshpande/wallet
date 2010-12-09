## KEYCHAIN
#
KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  $KEYCHAIN_PATH -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

# HISTORY
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history data
setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first

# COREUTILS
source /usr/local/Cellar/coreutils/8.5/aliases

## ALIAS
alias cpd="cap production deploy"
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root shutdown'
alias pgstart="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb start"
alias pgstop="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb stop -m immediate"
alias s='sudo'
alias l='gls -GHCl --color=auto'
alias ls='gls -GHCF --color=auto'
alias ss='script/rails server'
alias sc='script/rails console'
alias bi='bundle install'
alias be='bundle exec'
alias gap="git add -e"
alias gca="git commit -a -v"
alias g="git"
alias ..="cd .."
alias ...="cd ..."

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

# COMPLETION
autoload -U compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/opt/local/bin:/usr/local/Cellar/python/2.7/bin/:$PATH

autoload colors
colors
export PS1="%{$fg[red]%}%n%{$reset_color%} @ %{$fg[blue]%}%~ %{$fg[green]%}(%T)%{$reset_color%} %# "
