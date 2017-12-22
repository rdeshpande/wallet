## ALIAS
alias s='sudo'
alias bi='bundle install'
alias be='bundle exec'
alias gca="git commit -a -v"
alias sc="rails console"
alias ss="rails server"
alias g="git"
alias gph="git push heroku"
alias hdb="heroku run rake db:migrate"
alias ..="cd .."
alias ...="cd ..."
alias mig="bundle exec rake db:migrate"
alias bs="bundle exec rspec"
alias cpd="bundle exec cap production deploy"

set -o vi

# SETTINGS
export EDITOR='vim'
export GPGKEY=01EFDA0D
export GREP_OPTIONS='--color=auto'
export LC_CTYPE=en_US.UTF-8
export DISABLE_CORRECTION="true"

PATH=~/bin:$PATH

# GO!
export GOPATH="$HOME/go"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

