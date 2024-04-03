#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    input=$1
    factorielleComplet=0
    factorielleInput=$((2**(input-1)))

    for (( i=1; i<=64; i++ ));
    do
        factorielleComplet=$((factorielleComplet+2**i))
        echo "${i}: ${factorielleComplet}"
    done

    echo $factorielleComplet
    echo $factorielleInput
else 
    echo "Usage: grains.sh <person>"
    exit 1
fi
