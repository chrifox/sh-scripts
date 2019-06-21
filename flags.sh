# $SCRIPTS/flags.sh

# PATTERNS
# horizontal bicolor
# vertical bicolor
# horizontal tricolor
# vertical tricolor
# straight cross
# diagonal cross
# center "circle" # eg JPN
# other # eg Spain/USA

colorBlock() {
 printf "$(tput setab $1) $(tput sgr0)"
}

flag() {
cols=18
rows=6
country=${1}

# POL
[ $country == "POL" ] && hBiColor $cols $rows 15 1
# FRA
[ $country == "FRA" ] && vTriColor $cols $rows 4 15 1
# ITA
[ $country == "ITA" ] && vTriColor $cols $rows 28 15 1
# BEL
[ $country == "BEL" ] && vTriColor $cols $rows 0 3 1
}

hBiColor() {
cols=$1
rows=$2
topColor=$3
bottomColor=$4
printf "$(tput setab $topColor)"
for (( row=0; row<$rows; row++ )); do
 [[ $row == $(($rows / 2)) ]] && printf "$(tput setab $bottomColor)"
 for (( col=0; col<$cols; col++ )); do
  printf " "
 done
 printf "\n"
done
printf "$(tput sgr0)"
}

vBiColor() {
cols=$1
rows=$2
firstColor=$3
secondColor=$4
oneHalf=$(($cols / 2))

for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$oneHalf; col++ )); do
  index=$(($col + 1))
  colorBlock $firstColor
  [[ $(($index % $oneHalf)) == 0 ]] && printf "\n"
 done
done
printf "$(tput cuu $rows)$(tput cuf $oneHalf)"

for (( row=0; row<$rows; row++ )); do
 for (( col=$(($oneHalf)); col<$cols; col++ )); do
  index=$(($col + 1))
  colorBlock $secondColor
  [[ $(($index % $cols)) == 0 ]] && printf "\n$(tput cuf $oneHalf)"
 done
done
printf "$(tput cub $oneHalf)"
}

vTriColor() {
cols=$1
rows=$2
firstColor=$3
secondColor=$4
thirdColor=$5
oneThird=$(($cols / 3))
twoThirds=$(($oneThird * 2))

for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$oneThird; col++ )); do
  index=$(($col + 1))
  colorBlock $firstColor
  [[ $(($index % $oneThird)) == 0 ]] && printf "\n"
 done
done
printf "$(tput cuu $rows)$(tput cuf $oneThird)"

for (( row=0; row<$rows; row++ )); do
 for (( col=$(($oneThird)); col<$twoThirds; col++ )); do
  index=$(($col + 1))
  colorBlock $secondColor
[[ $(($index % $twoThirds)) == 0 ]] && printf "\n$(tput cuf $oneThird)"
 done
done
printf "$(tput cuu $rows)$(tput cuf $oneThird)"

for (( row=0; row<$rows; row++ )); do
 for (( col=$(($twoThirds)); col<$cols; col++ )); do
  index=$(($col + 1))
  colorBlock $thirdColor
  [[ $(($index % $cols)) == 0 ]] && printf "\n$(tput cuf $twoThirds)"
 done
done
printf "$(tput cub $twoThirds)"
}

straightCross() {
cols=$1
rows=$2
bgColor=$3
crossColor=$4
crossCol=$(($cols / 2))
crossRow=$(($rows / 2))
for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$cols; col++ )); do
  printf "$(tput setab $bgColor)"
  [[ $col == $(($crossCol)) ]] && printf "$(tput setab $crossColor)"
  [[ $row == $(($crossRow)) ]] && printf "$(tput setab $crossColor)"
  printf " "
 done
 printf "$(tput sgr0)\n"
done
}

straightCrossVector() {
cols=$1
rows=$2
bgColor=$3
crossColor=$4

tile=$(($cols / 6))
corner$(($tile * 4))

# background
printf "$(tput setab $bgColor)"

# cross
printf "$(tput setab $crossColor)"

# reset
printf "$(tput sgr0)"
}
