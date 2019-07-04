# $SCRIPTS/interactive.sh

# Goal here is to create an interactive shell script
# User presses inputs and sees 'live' updates

# interact to begin!

interact() {
printf "$(tput setaf 1) Begin...  $(tput sgr0)\n"
MY_PROMPT='$ '
while :
do
  echo -n "$MY_PROMPT"
  read line
  # eval "$line"
  echo "$line"
done

exit 0
}
