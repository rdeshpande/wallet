# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="geoffgarside"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"
#
export DISABLE_GIT_STATUS_PROMPT="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails git ruby)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Applications/liftweb-1.0.1/apache-maven/bin:/Users/rdeshpande/.rvm/rubies/ree-1.8.7-2010.01/bin:/Users/rdeshpande/.rvm/gems/ree-1.8.7-2010.01/bin:/Users/rdeshpande/.rvm/gems/ree-1.8.7-2010.01@global/bin:/Users/rdeshpande/.rvm/bin:/opt/nginx/sbin:/web/tools/bin:/usr/local/Cellar/python/2.7/bin:/usr/local/bin:~/bin:~/wallet/bin:/var/lib/gems/1.8/bin/:/opt/local/bin:/opt/local/sbin:/web/jruby/bin:/usr/local/git/libexec/git-core:/opt/nginx/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11/bin:/opt/local/redis

# Vi mode
bindkey -v

# Incremental search
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

# Search based on what you typed in already
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

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

function cdd {
    cd ~/dev/$1 && rvm ree && rvm gemset use $1
}

# PW MANAGER
alias pw="gpg /Volumes/KEY/pw.yml.gpg && cat /Volumes/KEY/pw.yml && rm -f /Volumes/KEY/pw.yml"
alias pwe="gpg /Volumes/KEY/pw.yml.gpg && rm /Volumes/KEY/pw.yml.gpg && vi /Volumes/KEY/pw.yml && gpg -c /Volumes/KEY/pw.yml && rm -f /Volumes/KEY/pw.yml"

# SETTINGS
export EDITOR='vi'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=en_US.UTF-8
export RAILS_ENV='development'

# Fix for weird RVM prompt issue with oh-my-zsh
unsetopt auto_name_dirs

# RVM
if [[ -s "$HOME/.rvm/scripts/rvm" ]]
then
  source "$HOME/.rvm/scripts/rvm"
fi
