#!/usr/bin/env bash

nbr=$#

if [ $nbr -eq 1 ]; 
then 
    input=$1
    short=$( echo $input | tr -d ' ' )
    resultat=""
    somme=0
    if [[ $num =~ ^-?[0-9]+$ ]] || [ ${#input} -le 1 ]; 
    then
        echo "false"
        exit 0
    else
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
        for (( i=1; i<=${#short}; i++ ))
        do
            chiffre=$(echo $resultat[i] | cut -c$i)
            somme=$((somme+chiffre))
        done
        echo $resultat
        if [ $((somme%10)) -eq 0 ];
        then
            echo "true"
        else
            echo "false"
        fi
    fi
else
    echo "Il y a plus de deux paramètres"
    exit 1
fi
