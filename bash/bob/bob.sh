#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    question=$1
    something=0
    # for lettre in $(echo "$question");
    # do
    if [[ $question == *"?"* ]];
    then
        echo "Sure."
        something=$((something+1))
    fi
    if [[ "$question" == "${question^^}" ]];
    then
        echo "Whoa, chill out!"
        something=$((something+1))
    fi
    if [[ $question == *"?"* ]];
    then
        echo "Calm down, I know what I'm doing!"
        something=$((something+1))
    fi
    if [[ $lettre == *"$(echo "$question" | grep -q " "*; echo $?)"* ]];
    then
        echo "Fine. Be that way!"
        something=$((something+1))
    fi
    if [[ $something -eq 0 ]];
    then
        echo "Whatever."
    fi
    # done
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
