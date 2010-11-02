# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="kennethreitz"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git ruby)

source $ZSH/oh-my-zsh.sh

## KEYCHAIN
#
KEYCHAIN_PATH=`which keychain`

if [ -n "$KEYCHAIN_PATH" ]
then
  /opt/local/bin/keychain -q id_rsa
  [[ -f ~/.keychain/`hostname`-sh ]] && source ~/.keychain/`hostname`-sh
fi

## ALIAS
#
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root shutdown'
alias pgstart="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb start"
alias pgstop="sudo -u postgres pg_ctl -D /opt/local/var/db/postgresql83/defaultdb stop -m immediate"
alias s='sudo'
alias ll='ls -GHCl --color=auto'
alias ls='ls -GHCF --color=auto'
alias sr='script/rails'
alias bi='bundle install'
alias be='bundle exec'
alias gap="git add -e"

function cdd {
    cd ~/dev/$1 && rvm ree && rvm gemset use $1
}

# PW MANAGER
PW_PATH="~/.pw.yml"
alias pw="gpg ~/.pw.yml.gpg && cat ~/.pw.yml && rm -f ~/.pw.yml"
alias pwe="gpg ~/.pw.yml.gpg && rm ~/.pw.yml.gpg && vi ~/.pw.yml && gpg -c ~/.pw.yml && rm -f ~/.pw.yml"

# SETTINGS
export EDITOR='vi'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=en_US.UTF-8

# Fix for weird RVM prompt issue with oh-my-zsh
unsetopt auto_name_dirs

# RVM
if [[ -s "$HOME/.rvm/scripts/rvm" ]]
then
  source "$HOME/.rvm/scripts/rvm"
fi

# Customize to your needs...
export PATH=~/bin:/usr/local/bin:/opt/local/bin:/usr/local/Cellar/python/2.7/bin/:$PATH

echo
fortune
echo
