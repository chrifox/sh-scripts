# $SCRIPTS/flags.sh

# PATTERNS
# horizontal bicolor
# vertical bicolor
# horizontal tricolor
# vertical tricolor
# straight cross
# diagonal cross
# center "circle" # eg JPN
# other # eg USA/South Africa

colorTile() {
 printf "$(tput setab $1) $(tput sgr0)"
}

colorChar() {
 printf "$(tput setaf $1)#$(tput sgr0)"
}

colorBlock() {
cols=$1
rows=$2
color=$3
move=${4:--1}
for (( row=0; row<$rows; row++ )); do
 for (( col=0; col<$cols; col++ )); do
  index=$(($col + 1))
  colorTile $color
  [[ $(($index % $cols)) == 0 ]] && printf "\n$(tput cuf $move)"
 done
done
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
firstColor=$3
secondColor=$4
blockHeight=$(($rows / 2))
colorBlock $cols $blockHeight $firstColor
colorBlock $cols $blockHeight $secondColor
}

vBiColor() {
cols=$1
rows=$2
firstColor=$3
secondColor=$4
blockWidth=$(($cols / 2))
colorBlock $blockWidth $rows $firstColor
printf "$(tput cuu $rows)$(tput cuf $blockWidth)"
colorBlock $blockWidth $rows $secondColor $blockWidth
printf "$(tput cub $blockWidth)"
}

hTriColor() {
cols=$1
rows=$2
firstColor=$3
secondColor=$4
thirdColor=$5
blockHeight=$(($rows / 3))
colorBlock $cols $blockHeight $firstColor
colorBlock $cols $blockHeight $secondColor
colorBlock $cols $blockHeight $thirdColor
}

vTriColor() {
cols=$1
rows=$2
firstColor=$3
secondColor=$4
thirdColor=$5
oneThird=$(($cols / 3))
twoThirds=$(($oneThird * 2))
colorBlock $oneThird $rows $firstColor
printf "$(tput cuu $rows)$(tput cuf $oneThird)"
colorBlock $oneThird $rows $secondColor $oneThird
printf "$(tput cuu $rows)$(tput cuf $oneThird)"
colorBlock $oneThird $rows $thirdColor $twoThirds
printf "$(tput cub $twoThirds)"
}

straightCross() {
cols=$1
rows=$2
bgColor=$3
crossColor=$4
crossHPos=$(($cols / 2 - 1))
crossVPos=$(($rows / 2 + 1))
colorBlock $cols $rows $bgColor
printf "$(tput cub $crossVPos)$(tput cuu $crossVPos)"
colorBlock $cols 2 $crossColor
printf "$(tput cuu $crossVPos)$(tput cuf $crossHPos)"
colorBlock 2 $(($rows * 3)) $crossColor $crossHPos
printf "$(tput cub $crossHPos)"
}
