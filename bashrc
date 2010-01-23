#colors
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'

set -o vi

alias g="git"
alias ll='ls -GHCl'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root shutdown'
alias s='sudo'

#password manager
alias pw="gpg /Volumes/rdbackup/.pw.yml.gpg && cat /Volumes/rdbackup/.pw.yml && rm -f /Volumes/rdbackup/.pw.yml"
alias pwe="gpg /Volumes/rdbackup/.pw.yml.gpg && rm /Volumes/rdbackup/.pw.yml.gpg && vi /Volumes/rdbackup/.pw.yml && gpg -c /Volumes/rdbackup/.pw.yml && rm -f /Volumes/rdbackup/.pw.yml"

export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export HISTFILESIZE==10000
export LC_CTYPE=en_US.UTF-8
export PATH="~/bin:~/wallet/bin:/var/lib/gems/1.8/bin/:/opt/local/bin:/opt/local/sbin:/web/gilt/bin:/web/jruby/bin:/usr/local/git/libexec/git-core:${PATH}"
export RAILS_ENV='development'

# Incremental history
export PROMPT_COMMAND='history -a;history -n'
shopt -s histappend
export PS1="\[${COLOR_LIGHT_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w\[${COLOR_YELLOW}\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)\[${COLOR_GREEN}\] > \[${COLOR_NC}\]"  # Primary prompt with user, host, and path 1

# Source work-related configs
for file in `find ~/wallet/work -type f`
do
  source $file
done
