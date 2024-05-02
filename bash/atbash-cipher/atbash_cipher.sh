#!/usr/bin/env bash

nbr=$#

if [ $nbr -eq 2 ]; 
then 
    alphabet="abcdefghijklmnopqrstuvwxyz"
    nombres="0123456789"
    cipher="zyxwvutsrqponmlkjihgfedcba"
    input=$(tr '[:upper:]' '[:lower:]' <<< "${2// }")
    intermediaire=""
    reponse=""

    if [ "$1" = "encode" ];
    then
        for (( i=1; i<=${#input}; i++ ))
        do
            recherche="$(echo $input[i] | cut -c$i)"
            if [[ $alphabet == *"$recherche"* ]];
            then 
                debut_chaine="${alphabet%%${recherche}*}"
                position=$((${#debut_chaine}+1))
                intermediaire+="$(echo $cipher[position] | cut -c$position)"
            elif [[ $nombres == *"$recherche"* ]];
            then 
                intermediaire+="$recherche"
            fi
        done

        for (( i=1; i<=${#intermediaire}; i++ ))
        do
            chaine="$(echo $intermediaire[i] | cut -c$i)"
            if [ $((i%5)) -eq 0 ]; 
            then 
                reponse+="$chaine "
            else
                reponse+="$(echo $intermediaire[i] | cut -c$i)"
            fi
        done

        echo $reponse
    else
        for (( i=1; i<=${#input}; i++ ))
        do
            recherche="$(echo $input[i] | cut -c$i)"
            if [[ $cipher == *"$recherche"* ]];
            then 
                debut_chaine="${cipher%%${recherche}*}"
                position=$((${#debut_chaine}+1))
                reponse+="$(echo $alphabet[position] | cut -c$position)"
            elif [[ $nombres == *"$recherche"* ]];
            then 
                reponse+="$recherche"
            fi
        done

        echo $reponse
    fi
else 
    echo "Usage: atbash-cipher.sh <string2>"
    exit 1
fi
