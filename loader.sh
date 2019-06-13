#!bin/bash

# loading spinner

loader() {
chars="/-\|"
delay=${1:-0.25}
while :; do
for (( i=0; i<${#chars}; i++ )); do
sleep $delay
tput cuf 2 && printf "%s\r" "${chars:$i:1}"
done
done
}

dots() {
ch="..."
while :; do
for (( i=0; i<${#ch}; i++ )); do
sleep 0.2
printf "%s" "${ch:$i:1}"
done
sleep 0.2
printf "$(tput cub ${#ch})$(tput el)"
done
}
