# $SCRIPTS/helpers.sh

# super list
sls() {
	dir=${1:-"./"}
	for item in ${dir}*; do
		[[ -d $item ]] &&
		echo "$(tput setaf 10) $(stat -c %A" "%a" "%n $item)" ||
		echo "$(tput setaf 14) $(stat -c %A" "%a" "%n $item)"
	done
	printf "$(tput sgr0)"
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
