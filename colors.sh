colors() {

base=16
rest=256

echo "${base} ${rest}"

for (( i=0; i<=${base}; i++ )); do
printf "$(tput setaf $i)o$(tput sgr0)"
done

echo

nonbase=$((rest - base))
for (( i=${base}; i<=${nonbase}; i++ )); do
printf "$(tput setaf $i)o$(tput sgr0)"
done

}
