#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    if [[ $1 == "total" ]]; 
    then
        factorielleComplet=0

        for (( i=0; i<64; i++ ));
        do
            factorielleComplet=$(echo "$factorielleComplet + 2 ^ $i" | bc)
        done

        echo "$factorielleComplet"
    elif [[ $1 -ge 1 ]] && [[ $1 -le 64 ]]; 
    then
        input=$1
        factorielleInput=$(echo "2 ^ $((input - 1))" | bc)
        echo "$factorielleInput"
    else
        echo "Error: invalid input" && exit 1
    fi
else 
    echo "Usage: grains.sh <person>"
    exit 1
fi
