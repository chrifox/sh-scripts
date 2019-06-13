# $SCRIPTS/arrays.sh

# pass in array as "${array[@]}"
readArray() {
if [ "$1" == "--help" || "$1" == "-h" ]
then echo 'pass in $array as "${array[@]}"'
else
arr=("$@")
for i in "${arr[@]}"
do echo $i
done
fi
}

# example
testReadArray() {
array=("one" "two" "three")
array2=(1 2 3)
echo "# Strings"
readArray "${array[@]}"
echo "# Numbers"
readArray "${array2[@]}"
}
