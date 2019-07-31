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
