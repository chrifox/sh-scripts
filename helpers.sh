# $SCRIPTS/helpers.sh

# super list
sls() {
dir=$1
for item in $dir/*; do
 [[ -d $item ]] && echo "$(tput setaf 56) DIR: $(tput sgr0) ${item}" || echo "$(tput setaf 222) FILE: $(tput sgr0) ${item}"
done
}

# split by :
splitPath() {
echo "${1//:/$'\n'}"
}

# React
alias nuke="rm -rf node_modules/"

checkVar() {
echo ${1:-"This variable does not exist"}
}
