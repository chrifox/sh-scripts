# $SCRIPTS/binary.sh

toBinary() {
	local n bit
	for (( n=$1; n>0; n>>=1  )); do bit="$(( n&1 ))$bit"; done
	printf "%s\n" "$bit"
}
