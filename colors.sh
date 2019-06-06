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

group=6
for (( i=${base}; i<${total}; i++ )); do
 index=$((i - base))
 if (( $index % $group == 0 )); then
  echo
 fi
 printf "$(tput setab $i)  $(tput sgr0)"
done

echo
}
