# $SCRIPTS/flags.sh

# PATTERNS
# horizontal bicolor
# vertical bicolor
# horizontal tricolor
# vertical tricolor
# straight cross
# diagonal cross
# center "circle" # eg JPN

flag() {
cols=30
rows=6
country=${1}

# POL
if [[ $country == "POL" ]]; then hBiColor $cols $rows 255 1; fi
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
