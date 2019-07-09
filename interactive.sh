# $SCRIPTS/interactive.sh

# Goal here is to create an interactive shell script
# User enters choices for given questions and script generates output file

interact() {
PROMPT="$ "
MODE=default
X="$(tput cols)"
Y="$(tput lines)"
echo "$(tput setaf 2) ~ BEGIN ~ $(tput sgr0)"
echo "Size: ${X} x ${Y}"
echo "Mode: ${MODE}"
while :
do
  echo -n "$PROMPT"
  read line
  if [[ -n $line ]]; then
   echo "You typed: ${line}"
   echo "Is this a command? [Y/N]"
   read entry
   [[ $entry == "Y\|y" ]] && eval "${echo} ${line}"
   [[ $entry == "N\|n" ]] && echo
  fi
done

exit 0
}

menu() {
TITLE=$1
echo "$TITLE"
shift # remove first arg
OPTIONS=($@)
PS3="$ "
select opt in "${OPTIONS[@]}" "Quit"; do
  case "$REPLY" in
    "${opt}" ) echo "You chose $opt => $REPLY";;

   $(( ${#OPTIONS[@]}+1 )) ) echo Goodbye!; break;;
   * ) echo "Invalid option. Please try again.";continue;;
  esac
done
}

save() {
CONTENTS=$1
OUTPUT=$2
echo $CONTENTS > $OUTPUT
}

buildChar() {
echo "Choose a name"
read NAME
FILE="${NAME}-$(date +%F)"

GENDERS=(Male Female)
menu "Choose a gender" "${GENDERS[@]}"

RACES=(Human Drakar Grog)
menu "Choose a race" "${RACES[@]}"

# CHAR=echo "NAME=$name"
# save $CHAR "$FILE.tmp"
}
