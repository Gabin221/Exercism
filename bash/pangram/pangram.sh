#!/usr/bin/env bash

nbrParam=$#
if [ $nbrParam -eq 1 ]; 
then 
    parametre=$1
    pangram="$(tr [A-Z] [a-z] <<< "$parametre")"
    nbrLettres=0
    for (( i=0; i<${#pangram}; i++ )); 
    do
        lettre=${pangram:$i:1}
        alphabet="abcdefghijklmnopqrstuvwxyz"

        if grep -sq '$lettre' <<< "$alphabet"
        then
            nbrLettres=$((nbrLettres+1))
            alphabet="sed -i '1d' $alphabet"
        fi
        
        echo "$alphabet"
    done

    echo $nbrLettres

    if [ $nbrLettres -eq 26 ];
    then
        echo "true"
    else
        echo "false"
    fi
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
