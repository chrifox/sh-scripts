# $SCRIPTS/interactive.sh

# Goal here is to create an interactive shell script
# User presses inputs and sees 'live' updates

# interact to begin!

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
   [[ $entry == "Y" ]] && eval "${echo} ${line}"
  fi
done

exit 0
}

menu() {
title="Select example"
prompt="Pick an option:"
options=("A" "B" "C")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo "You picked $opt which is option $REPLY";;
    2 ) echo "You picked $opt which is option $REPLY";;
    3 ) echo "You picked $opt which is option $REPLY";;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
}
