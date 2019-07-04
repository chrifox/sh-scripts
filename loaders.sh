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
length=${1:-10}
color=${2:-2}
printf "$(tput setab 250)"
for ((i=0; i<$length; i++ )); do printf " "; done
printf "$(tput cub $length)$(tput setab $color)"
for ((i=0; i<$length; i++ )); do
 sleep 0.3
 printf " "
done
printf "$(tput sgr0)\n"
}
