# $SCRIPTS/loader.sh

spinner() {
# Hide cursor
printf "$(tput civis)"

chars="/-\|"
delay=${1:-0.25}

while :; do
 for (( i=0; i<${#chars}; i++ )); do
  sleep $delay
  printf "%s\r" "${chars:$i:1}"
 done
done

# Reset cursor
printf "$(tput cnorm)"
}

dots() {
ch="${1:-...}"
while :; do
 for (( i=0; i<${#ch}; i++ )); do
  sleep 0.3
  printf "%s" "${ch:$i:1}"
 done
 sleep 0.3
 printf "$(tput cub ${#ch})$(tput el)"
done
}

loadingBar() {
printf "$(tput setab 250)          $(tput cub 10)$(tput setab 2)"
for ((i=0; i<10; i++ )); do
 sleep 0.3
 printf " "
done
printf "$(tput sgr0)\n"
}
