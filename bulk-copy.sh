#!/bin/bash
# $SCRIPTS/bulk-copy.sh

bulkCopy() {
filelist=`cat $1`
destination=$2
if [ ! -d "$destination" ]; then mkdir "$directory"; fi
	for f in $filelist; do
	# echo ${f};
	cp ${f} ${destination}/${f};
	done;
}
