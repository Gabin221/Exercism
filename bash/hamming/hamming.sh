#!/usr/bin/env bash

# ./hamming.sh GAGCCTACTAACGGGAT CATCGTAATGACGGCCT

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
            if [ "${brin1:i:1}" == "A" ] && [ "${brin2:i:1}" != "T" ];
            then
                distance=$((distance+1))
            elif [ "${brin1:i:1}" == "C" ] && [ "${brin2:i:1}" != "G" ];
            then
                distance=$((distance+1))
            elif [ "${brin1:i:1}" == "G" ] && [ "${brin2:i:1}" != "C" ];
            then
                distance=$((distance+1))
            elif [ "${brin1:i:1}" == "T" ] && [ "${brin2:i:1}" != "A" ];
            then
                distance=$((distance+1))
            fi
        done
    else 
        echo "Les chaines ne font pas la même taille"
        exit 1
    fi
else 
    echo "Un seul argument autorisé"
    exit 1
fi

echo "$distance"
