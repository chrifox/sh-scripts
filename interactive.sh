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
