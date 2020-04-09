#!/bin/bash
if [[ $# == 2 ]]; then
	echo " "
else
	echo "Incorrect number of arguments!"
	exit
fi
if [[ ! -f $2 ]]; then 
	echo "File does not exist!"
	exit
fi
if [ $(grep -c "$1" ulist.txt) == 1 ];
then
	echo "Given username already exists"
	echo "The file contents:"
	echo " "
	cat ulist.txt
else
	echo "Writing to file"
	echo $1 >> $2
	echo " "
	echo "The file contents:"
	cat ulist.txt
fi
