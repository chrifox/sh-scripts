# $SCRIPTS/grepify.sh

export GREP_OPTIONS="--color=always"
export GREP_COLOR="1;91;40"

removeBlankLines() {
 file=$1
 printf "$(sed '/^$/d' $file)"
}

# super grep
# find all cases that match with, line numbers
sgrep() {
 searchPhrase="${1}"
 file="${2}"
 printf "$(removeBlankLines $file | grep -n $searchPhrase)\n"
}

# reverse grep
# find all cases that do not match, with line numbers
rgrep() {
 searchPhrase="${1}"
 file="${2}"
 printf "$(removeBlankLines $file | grep -vn $searchPhrase)\n"
}
