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
OPTIONS=$1
select opt in "${OPTIONS[@]}" "Q"; do
  case "$REPLY" in
   1) echo "You chose $opt => $REPLY";;
   2) echo "You chose $opt => $REPLY";;

   $(( ${#OPTIONS[@]}+1 )) ) echo "Goodbye!"; break;;
   *) echo "Invalid option. Try another one.";continue;;
  esac
 done
}

buildCharacter() {
ALIVE=true
PS3="$ "
RACES=("Human" "Drakar")
while $ALIVE; do
menu "${RACES[@]}"
done
}
