set -o vi

alias g="git"
alias gm="open http://gmail.com http://mail.gilt.com http://news.google.com http://www.wunderground.com/cgi-bin/findweather/getForecast?query=10009&wuSelect=WEATHER"
alias ll='ls -GHCl --color=auto'
alias ls='ls -GHCF --color=auto'
alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
alias mysqlstop='/opt/local/bin/mysqladmin5 -u root shutdown'
alias s='sudo'

function vg {
  vim `git grep -li $1`;
}

#password manager
alias pw="gpg /Volumes/KEY/pw.yml.gpg && cat /Volumes/KEY/pw.yml && rm -f /Volumes/KEY/pw.yml"
alias pwe="gpg /Volumes/KEY/pw.yml.gpg && rm /Volumes/KEY/pw.yml.gpg && vi /Volumes/KEY/pw.yml && gpg -c /Volumes/KEY/pw.yml && rm -f /Volumes/KEY/pw.yml"

export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export HISTFILESIZE==10000
export LC_CTYPE=en_US.UTF-8
export PATH="~/bin:~/wallet/bin:/var/lib/gems/1.8/bin/:/opt/local/bin:/opt/local/sbin:/web/jruby/bin:/usr/local/git/libexec/git-core:${PATH}"
export RAILS_ENV='development'

# prompt
export PS1='\u@\h:\w`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`> '

# Incremental history
export PROMPT_COMMAND='history -a;history -n'
shopt -s histappend

# Source work-related configs
for file in `find ~/wallet/work -type f`
do
  source $file
done
