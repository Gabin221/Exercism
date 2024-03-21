#!/usr/bin/env bash

nbrParam=$#
if [ $nbrParam -eq 1 ];
then
    chaine=$1
    parametre=$(tr '[:upper:]' '[:lower:]' <<< "$chaine")
    
    alphabet="abcdefghijklmnopqrstuvwxyz"
    lettresPresentes=""

    for lettre in $(echo "$parametre" | grep -o .);
    do
        if [[ $alphabet == *"$lettre"* && ! $lettresPresentes == *"$lettre"* ]];
        then
            lettresPresentes="$lettresPresentes$lettre"
        fi
    done

    if [ ${#lettresPresentes} -eq 26 ];
    then
        echo "true"
    else
        echo "false"
    fi
else 
    echo "Usage: pangram.sh <mot>"
    exit 1
fi
