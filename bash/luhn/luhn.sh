#!/usr/bin/env bash

nbr=$#

if [ $nbr -eq 1 ]; 
then 
    input=$1
    short=$( echo $input | tr -d ' ' )
    resultat=""
    if [ ${#input} -le 1 ]; 
    then
        echo "problème"
        exit 1
    else
        echo $short
        for (( i=1; i<=${#short}; i++ ))
        do
            chiffre=$(echo $short[i] | cut -c$i)
            if [ $((i%2)) -eq 1 ]; 
            then
                double=$((chiffre*2))
                if [ $double -gt 9 ]; 
                then
                    doubleGrand=$((double-9))
                    resultat+="$doubleGrand"
                else
                    resultat+="$double"
                fi
            else
                resultat+="$chiffre"
            fi
        done
        echo "résultat: $resultat"
    fi
else
    echo "Il y a plus de deux paramètres"
    exit 1
fi
