set -o vi

alias g="git"
alias ll='ls -GHCl'
alias ls='ls -GHCF'
alias s='sudo'

#password manager
alias pw="gpg /Volumes/rdbackup/.pw.yml.gpg && cat /Volumes/rdbackup/.pw.yml && rm -f /Volumes/rdbackup/.pw.yml"
alias pwe="gpg /Volumes/rdbackup/.pw.yml.gpg && rm /Volumes/rdbackup/.pw.yml.gpg && vi /Volumes/rdbackup/.pw.yml && gpg -c /Volumes/rdbackup/.pw.yml && rm -f /Volumes/rdbackup/.pw.yml"
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root shutdown'

export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export HISTFILESIZE==10000
export LC_CTYPE=en_US.UTF-8
export PATH="~/bin:~/wallet/bin:/var/lib/gems/1.8/bin/:/opt/local/bin:/opt/local/sbin:/web/gilt/bin:/web/jruby/bin:/usr/local/git/libexec/git-core:${PATH}"
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

# Source work-related configs
for file in `find ~/wallet/work -type f`
do
  source $file
done
