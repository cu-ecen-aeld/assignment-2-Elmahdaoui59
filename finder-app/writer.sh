#!/bin/bash

if [ $# -eq 2 ]
then
        install -D /dev/null $1
	echo $2 > $1
	exit 0
else
	echo The number of input arguments should be 2
	exit 1
fi
