#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    input=$1
    string=""
	for i in $input;
    do
        echo $i
    done
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
