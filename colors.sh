# color blocks
colors() {

base=16
total=256

baseGroup=8
for (( i=0; i<${base}; i++ )); do
 if (( $i % $baseGroup == 0 )); then
  echo
 fi
 printf "$(tput setab $i)  $(tput sgr0)"
done

group="${1:-36}"
for (( i=${base}; i<${total}; i++ )); do
 index=$((i - base))
 if (( $index % $group == 0 )); then
  echo
 fi
 printf "$(tput setab $i)  $(tput sgr0)"
done

echo
}

rainbowStr() {
str=${1:-Rainbow!}
start=${2:-0}
end=${3:-16}
for (( i=$start; i<$end; i++ )); do
printf "$(tput setaf $i)${str:$i:1}$(tput sgr0)"
done
echo
}

# print color range
printColors() {
START=${1:-0}
END=${2:-$1 + 8}
for (( i=$START; i<$END; i++ )); do
printf "$(tput setab $i) $i $(tput sgr0)"
done
echo
}

# snake
colorWave() {
defaultChars="/\_"
chars="${1:-$defaultChars}"
cols="${2:-256}"
while :; do
 for (( i=0; i<${#chars}; i++ )); do
  printf "%s" "$(tput setaf $((RANDOM%=$cols)))${chars:$i:1}$(tput sgr0)"
 done
done
}

