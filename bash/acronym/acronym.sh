#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
	input=$1
    ascii_value=$(od -An -t u1 <<< "\*")
    listeMots=$(echo $input | tr "-" "\n" | tr "_" "\n" | tr \* "\n")
    accronyme=""
    taille=${#listeMots}+1

    for ip in $listeMots
    do
        mot=${ip^}
        initiale=${mot::1}
        accronyme=$accronyme"${mot::1}"
    done

    echo "$accronyme"
else 
    echo "Usage: error_handling.sh <person>"
    exit 1
fi
