#!/bin/bash
if [ $# -eq 2 ]
then
	if [ -d $1 ]
	then

		((nbfiles=$(find $1 -type f | wc -l)))
		((nblines+=$(grep -r $2 $1 | wc -l)))
		echo The number of files are $nbfiles and the number of matching lines are $nblines

		exit 0
	else
		echo directory $1 doesn\'t exists
		exit 1
	fi
else
	echo the number of input arguments should be 2
	exit 1
fi
