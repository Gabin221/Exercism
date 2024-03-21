#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    nbr=$1
    for i in ${#nbr};
    do
	echo $i
    done
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
