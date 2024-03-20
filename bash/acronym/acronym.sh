#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
	input=$1
    position=$(expr index "$input" "*")

    if [[ $position -ne 0 ]]; 
    then
        split1=${input::position-1}${input:position:${#input}}
        listeMots=$(echo $split1 | tr "-" "\n" | tr "_" "\n")
        accronyme=""
        taille=${#listeMots}+1

        for ip in $listeMots
        do
            mot=${ip^}
            initiale=${mot::1}
            accronyme=$accronyme"$initiale"
        done

        echo "$accronyme"
    else
        split1=${input::position-1}${input:position:${#input}}
        listeMots=$(echo $input | tr "-" "\n" | tr "_" "\n")
        accronyme=""
        taille=${#listeMots}+1

        for ip in $listeMots
        do
            mot=${ip^}
            initiale=${mot::1}
            accronyme=$accronyme"$initiale"
        done

        echo "$accronyme"
    fi
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
