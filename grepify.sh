# $SCRIPTS/grepify.sh

export GREP_OPTIONS="--color=always"
export GREP_COLOR="1;91;40"

# super grep
# takes (string file flag)
sgrep() {
 searchPhrase="${1}"
 file="${2}"
 pSearchPhrase="$(tput setaf 1)$searchPhrase$(tput sgr0)"
 printf "Found $(cat $file | grep -c $searchPhrase) occurences of $pSearchPhrase:\n"
 printf "$(cat $file | grep -n $searchPhrase)"
}
