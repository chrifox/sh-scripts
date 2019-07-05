# $SCRIPTS/misc.sh

# split by :
splitPath() {
echo "${1//:/$'\n'}"
}

# just for fun
alias nuke="rm -rf node_modules/"

checkVar() {
echo ${1:-"This variable does not exist"}
}

msg() {
if [ -z "$1" ]
then echo "msg() takes a string"
elif [ -n "$1" ]
then echo "$1"
fi
}

# super list
sls() {
dir=$1
for item in $dir/*; do
 [[ -d $item ]] && echo "$(tput setab 5) DIRECTORY: $(tput sgr0) ${item}" || echo "$(tput setab 38) FILE: $(tput sgr0) ${item}"
done
}
