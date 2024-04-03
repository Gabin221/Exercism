#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    input=$1
    if [[ $input <= 0 ]];
    then
        echo "Error: invalid input"
    else
        factorielleComplet=0
        factorielleInput=$((2**(input-1)))

        for (( i=1; i<=64; i++ ));
        do
            factorielleComplet=$((factorielleComplet+2**i))
        done

        echo $factorielleComplet
        echo $factorielleInput
    fi

else 
    echo "Usage: grains.sh <person>"
    exit 1
fi
