# $SCRIPTS/colors.sh

# color blocks
colors() {

base=16
mainColors=232
total=256

echo "Base colors: (0 - 15)"
baseGroup=8
for (( i=0; i<${base}; i++ )); do
 if (( $i % $baseGroup == 0 && $i != 0 )); then
  echo
 fi
 printf "$(tput setab $i)  $(tput sgr0)"
done

echo

echo "Additional colors: (16 - 231)"
group="${1:-36}"
for (( i=${base}; i<${mainColors}; i++ )); do
 index=$((i - base))
 if (( $index % $group == 0 && $index != 0 )); then
  echo
 fi
 printf "$(tput setab $i)  $(tput sgr0)"
done

echo

echo "Black => White: (232 - 255)"
for (( i=${mainColors}; i<${total}; i++ )); do
 printf "$(tput setab $i)  $(tput sgr0)"
done

echo
}

getColor() {
color=$1
echo "$color = $(tput setab $color)  $(tput sgr0)"
}

# print color range
printColors() {
START=${1:-0}
END=${2:-$1+8}
for (( i=$START; i<$END; i++ )); do
printf "$(tput setab $i) $i $(tput sgr0)"
done
echo
}

# infinite random colors
colorWave() {
defaultChars="/―\_"
chars="${1:-$defaultChars}"
cols="${2:-256}"
while :; do
 for (( i=0; i<${#chars}; i++ )); do
  printf "%s" "$(tput setaf $((RANDOM%=$cols)))${chars:$i:1}$(tput sgr0)"
 done
done
}

