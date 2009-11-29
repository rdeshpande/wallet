set -o vi

alias g="git"
alias ll='ls -GHCl --color=auto'
alias ls='ls -GHCF --color=auto'
alias s='sudo'

#password manager
alias pw="gpg /Volumes/DISK_IMG/.pw.yml.gpg && cat /Volumes/DISK_IMG/.pw.yml && rm -f /Volumes/DISK_IMG/.pw.yml"
alias pwe="gpg /Volumes/DISK_IMG/.pw.yml.gpg && rm /Volumes/DISK_IMG/.pw.yml.gpg && vi /Volumes/DISK_IMG/.pw.yml && gpg -c /Volumes/DISK_IMG/.pw.yml && rm -f /Volumes/DISK_IMG/.pw.yml"

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

# Source work-related configs
for file in `find ~/wallet/work -type f`
do
  source $file
done
