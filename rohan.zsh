alias s='sudo'
alias g="git"

set -o vi

export EDITOR='vim'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/opt/go/libexec/bin

# Docker bash fixes
autoload bashcompinit
bashcompinit
gi(){
    docker exec -it $1 bash -c "stty cols $COLUMNS rows $LINES && bash";
}
_gi(){
    COMPREPLY=( $(docker ps --format "{{.Names}}" -f name=$2) );
}
complete -F _gi gi;
export gi;

alias lapi="gi luminary-api"
alias lg="ssh luminary1"
