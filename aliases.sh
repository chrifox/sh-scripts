# $SCRIPTS/aliases.sh

alias aliases="cat $SCRIPTS/aliases.sh"

# git
alias gs="git status"
alias gco="git checkout"
alias gbr="git branch"
alias gf="git fetch"
alias gpd="git pull"
alias gpu="git push"
alias glog="git log --graph --all --oneline --decorate"
alias gpr="git remote prune origin"
alias gprdr="git remote prune origin --dry-run"

# yarn
alias ys="yarn start"
alias yt="yarn test"
alias yb="yarn build"

# formatting
alias reset="tput sgr0"
