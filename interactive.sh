# $SCRIPTS/interactive.sh

# Goal here is to create an interactive shell script
# User presses inputs and sees 'live' updates

# interact to begin!

interact() {
MY_PROMPT="$ "
MODE=default
X="$(tput cols)"
Y="$(tput lines)"
echo "$(tput setaf 2) ~ BEGIN ~ $(tput sgr0)"
echo "Size: ${X} x ${Y}"
echo "Mode: ${MODE}"
while :
do
  echo -n "$MY_PROMPT"
  read line
  # eval "${line}"
done

exit 0
}
