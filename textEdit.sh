# $SCRIPTS/textEdit.sh

# eg. on the fly =>  perl -pe regexp
# eg. pipe in => source | perl -lpe regexp
# eg. files => perl -i.bak -pe regexp file.txt

findAndReplace() {
find=$1
replace=$2
file=$3
printf "$(perl -i.old -pe s/$find/$replace/ $file)"
}
