colors() {

base=16
total=256

echo "${base} ${rest}"

for (( i=0; i<=${base}; i++ )); do
printf "$(tput setaf $i)o$(tput sgr0)"
done

echo

rest=$((total - base))
group=6

for (( i=${base}; i<=${rest}; i++ )); do
printf "$(tput setaf $i)o$(tput sgr0)"

if (( $i % $group == 0 )); then
echo
fi
done

}
