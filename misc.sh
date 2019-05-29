# $SCRIPTS/misc.sh

alias misc="cat $SCRIPTS/misc.sh"
export PI="3.14159265358979323846264"
alias pi="echo $PI"

# split by :
splitPath() {
echo "${1//:/$'\n'}"
}

# just for fun
alias nuke="rm -rf node_modules/"

checkVar() {
echo ${1:-"This variable does not exist"}
}

msg() {
if [[ -z "$1" ]]
then echo "msg() takes a string"
elif [[ -n "$1" ]]
then echo "$1"
fi
}

# pass in array as "${array[@]}"
readArray() {
if [[ "$1" == "--help" || "$1" == "-h" ]]
then echo 'pass in $array as "${array[@]}"'
else
arr=("$@")
for i in "${arr[@]}"
do echo "$i"
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
