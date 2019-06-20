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
cols=12
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
for (( row=0; row<$rows; row++ )); do
 if [[ $row < $(($rows / 2)) ]]; then printf "$(tput setab $topColor)"
 else printf "$(tput setab $bottomColor)"
 fi
 for (( col=0; col<$cols; col++ )); do
  printf " "
 done
 printf "$(tput sgr0)\n"
done
}

vBiColor() {
cols=$1
rows=$2
leftColor=$3
rightColor=$4
for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$cols; col++ )); do
  if [[ $col < $(($cols / 2)) ]]; then printf "$(tput setab $leftColor)"
  else printf "$(tput setab $rightColor)"
  fi
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
for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$cols; col++ )); do
  oneThird=$(($cols / 3))
  if [[ $col < $oneThird ]]; then printf "$(tput setab $firstColor)"
  elif [[ $col > $(($oneThird * 2 - 1)) ]]; then printf "$(tput setab $thirdColor)"
  else printf "$(tput setab $secondColor)"
  fi
  printf " "
 done
 printf "$(tput sgr0)\n"
done
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
