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
PROPERTY=$2
shift 2 # remove first 2 args
OPTIONS=($@)
PS3="$ "
echo "$TITLE"
select ANSWER in "${OPTIONS[@]}"; do
  for OPT in "${OPTIONS[@]}"; do
    if [[ $OPT == $ANSWER ]]; then
      break 2
    fi
  done
done

# save in .tmp file
save "$PROPERTY: $ANSWER" "tmp/$PROPERTY.tmp"
}

save() {
CONTENTS=$1
OUTPUT=$2
echo $CONTENTS > $OUTPUT
}

buildChar() {
echo "Choose a name"
read NAME
mkdir $SCRIPTS/tmp
FILE="${NAME}-$(date +%F)"
save "name: $NAME" "tmp/name.tmp"

GENDERS=(Male Female)
menu "Choose a gender" "gender" "${GENDERS[@]}"

RACES=(Human Drakar Grog)
menu "Choose a race" "race" "${RACES[@]}"

CHAR=""
for file in ./tmp/*.tmp; do
 CONTENT="$(cat $file)"
 CHAR="${CHAR}${CONTENT} "
done

# save $CHAR "$FILE.txt"
echo "${CHAR}"

# cleanup .tmp files
rm -rf $SCRIPTS/tmp
}
