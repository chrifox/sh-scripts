# $SCRIPTS/misc.sh

# print color range
printColors() {
START=${1:-0}
END=${2:-$1+8}
for (( i=$START; i<$END; i++ )); do
echo "$(tput setaf $i)$i$(tput sgr0)"
done
}

colorWave() {
chars="${1:-/\_}"
cols="${2:-12345678}"
while :; do
 for (( i=0; i<${#chars}; i++ )); do
  printf "%s" "$(tput setaf $((RANDOM%=$cols)))${chars:$i:1}$(tput sgr0)"
 done
done
}

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
if [ -z "$1" ]
then echo "msg() takes a string"
elif [ -n "$1" ]
then echo "$1"
fi
}

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
