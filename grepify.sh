# $SCRIPTS/grepify.sh

export GREP_OPTIONS="--color=auto"

# super grep
# takes (string file flag)
sgrep() {
 searchPhrase="${1}"
 file="${2}"
 flag="${3}"
 cat $file | grep $flag $searchPhrase
 # -c list number of occurences
 # -n show line number for each occurence
}
