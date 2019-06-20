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

flag() {
cols=18
rows=6
country=${1}

# POL
if [[ $country == "POL" ]]; then hBiColor $cols $rows 15 1; fi
# FRA
if [[ $country == "FRA" ]]; then vTriColor $cols $rows 4 15 1; fi
# ITA
if [[ $country == "ITA" ]]; then vTriColor $cols $rows 28 15 1; fi
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
leftColor=$3
rightColor=$4
for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$cols; col++ )); do
  printf "$(tput setab $rightColor)"
  [[ $col < $(($cols / 2)) ]] && printf "$(tput setab $leftColor)"
  printf " "
 done
 printf "$(tput sgr0)\n"
done
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
 for (( col=0; col<$cols; col++ )); do
  [[ $col < $oneThird ]] && printf "$(tput setab $firstColor)"
  [[ $col > $(($oneThird - 1)) ]] && [[ $col < $twoThirds ]] && printf "$(tput setab $secondColor)"
  [[ $col > $(($twoThirds - 1)) ]] && printf "$(tput setab $thirdColor)"
  printf "${col} "
 done
 printf "\n"
done
printf "$(tput sgr0)"
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
