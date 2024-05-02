#!/usr/bin/env bash

nbr=$#
brin1=$1
brin2=$2
distance=0

if [ $nbr -eq 2 ]; 
then 
	if [ ${#brin1} -eq ${#brin2} ]; 
    then 
        for (( i=0; i<=${#brin1}; i++ ))
        do
            if [ "${brin1:i:1}" != "${brin2:i:1}" ];
            then
                distance=$((distance+1))
            fi
        done
    else 
        echo "strands must be of equal length"
        exit 1
    fi
else 
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

echo "$distance"
