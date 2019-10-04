# $SCRIPTS/grep.sh

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

export GREP_COLOR="1;91;40"

stripBlankLines() {
 file=$1
 printf "$(sed '/^$/d' $file)"
}

# super grep
# search file for matches with line numbers
sgrep() {
 searchPhrase="${1}"
 file="${2}"
 shift 2
 printf "$(stripBlankLines $file | grep -in $searchPhrase)\n"
}
