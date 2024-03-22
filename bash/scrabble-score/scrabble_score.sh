#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    input=$1
    score=0
    for (( i=0; i<${#input}; i++ ));
    do
        lettre=${input:$i:1}
        if [[ "aeioulnrst" == *"$lettre"* ]] || [[ "AEIOULNRST" == *"$lettre"* ]];
        then
            score=$((score+1))
        elif [[ "dg" == *"$lettre"* ]] || [[ "DG" == *"$lettre"* ]];
        then
            score=$((score+2))
        elif [[ "bcmp" == *"$lettre"* ]] || [[ "BCMP" == *"$lettre"* ]];
        then
            score=$((score+3))
        elif [[ "fhvwy" == *"$lettre"* ]] || [[ "FHVWY" == *"$lettre"* ]];
        then
            score=$((score+4))
        elif [[ "k" == *"$lettre"* ]] || [[ "K" == *"$lettre"* ]];
        then
            score=$((score+5))
        elif [[ "jx" == *"$lettre"* ]] || [[ "JX" == *"$lettre"* ]];
        then
            score=$((score+8))
        else
            score=$((score+10))
        fi
    done
    echo $score
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
