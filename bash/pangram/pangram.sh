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

        case $alphabet in 
        
            *"$lettre"*)
                nbrLettres=$((nbrLettres+1))
                alphabet="${maVar%%lettre*}${maVar%lettre*}"
                ;;

        esac

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
