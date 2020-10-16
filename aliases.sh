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
alias grp="git remote prune origin"
alias grpdr="git remote prune origin --dry-run"

# delete remote branch
alias gdrb="git push origin --delete $1"

# yarn
alias ys="yarn start"
alias yt="yarn test"
alias yb="yarn build"

# formatting
alias reset="tput sgr0"

