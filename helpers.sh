# $SCRIPTS/helpers.sh

modulo() {
num=$1
divisor=$2
[ $(($num % $divisor)) == 0 ]
}
