# $SCRIPTS/flags.sh

flag() {
cols=16
rows=12
red=1
blue=21
white=255

for (( i=0; i<=$rows; i++ )); do
 for (( i=0; i<=$cols; i++ )); do
  printf "$(tput setab $red) "
 done
 printf "$(tput sgr0)\n"
done
}
