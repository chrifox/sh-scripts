# $SCRIPTS/grepify.sh

export GREP_OPTIONS="--color=always"
export GREP_COLOR="1;91;40"

# super grep
sgrep() {
 searchPhrase="${1}"
 file="${2}"
 printf "$(sed '/^$/d' $file | grep -n $searchPhrase)\n"
}

# reverse grep
rgrep() {
 searchPhrase="${1}"
 file="${2}"
 printf "$(sed '/^$/d' $file | grep -v -n $searchPhrase)\n"
}
