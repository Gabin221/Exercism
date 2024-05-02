#!/usr/bin/env bash

nbrParam=$#
if [ $nbrParam -eq 1 ]; 
then 
    nbr=$1
    resultat=0
    for (( i=0; i<${#nbr}; i++ )); 
    do
        chiffre=${nbr:$i:1}
        valeur=$((chiffre**${#nbr}))
        resultat=$((resultat+valeur))
    done

    if [ "$resultat" -eq "$nbr" ];
    then
        echo "true"
    else
        echo "false"
    fi
    
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
