set -o vi
ulimit -n 5000

alias g="git"
alias ll='ls -GHCl --color=auto'
alias ls='ls -GHCF --color=auto'
alias s='sudo'

# Gilt
alias cg="cd /web/gilt"
alias railstags="ctags -a -f tags --tag-relative -R app lib vendor"
alias sc="cg && OVERRIDE_PERFORMANCE_CONTRACTS=true PLAIN_JAVASCRIPTS=true PLAIN_STYLESHEETS=true GILT_DEFAULT_SUBSITE=us RAILS_ENV=development script/console"
alias sp="spec --options ~/.spec.opts"
alias ts="OVERRIDE_PERFORMANCE_CONTRACTS=true PLAIN_JAVASCRIPTS=true PLAIN_STYLESHEETS=true GILT_DEFAULT_SUBSITE=us RAILS_ENV=development thin start"
export GILT_DEFAULT_SUBSITE=us
export EVENT_NOKQUEUE=1

#password manager
alias pw="gpg /Volumes/DISK_IMG/.pw.yml.gpg && cat /Volumes/DISK_IMG/.pw.yml && rm -f /Volumes/DISK_IMG/.pw.yml"
alias pwe="gpg /Volumes/DISK_IMG/.pw.yml.gpg && rm /Volumes/DISK_IMG/.pw.yml.gpg && vi /Volumes/DISK_IMG/.pw.yml && gpg -c /Volumes/DISK_IMG/.pw.yml && rm -f /Volumes/DISK_IMG/.pw.yml"

# todo manager
alias t='~/bin/rtodo.sh main'

export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export HISTFILESIZE==10000
export LC_CTYPE=en_US.UTF-8
export PATH="~/bin:~/wallet/bin:/opt/local/bin:/opt/local/sbin:/web/gilt/bin:/web/jruby/bin:/usr/local/git/libexec/git-core:${PATH}"
export PS1='\u@\h:\w$(__git_ps1 "(%s)")> '
export RAILS_ENV='development'

# Incremental history
export PROMPT_COMMAND='history -a;history -n'
shopt -s histappend

# Git completion
if [ -f /opt/local/etc/bash_completion ]; then
 . /opt/local/etc/bash_completion
fi

source ~/.git-completion.bash
