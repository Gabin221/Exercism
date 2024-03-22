#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    question=$1
    if [[ $question == *"?"* ]];
    then
        echo "Sure."
    elif [[ "$question" == "${question^^}" ]];
    then
        echo "Whoa, chill out!"
    elif [[ $question == *"?"* ]];
    then
        echo "Calm down, I know what I'm doing!"
    elif [[ ${question} =~ ^[[:space:]]*$ ]];
    then
        echo "Fine. Be that way!"
    else
        echo "Whatever."
    fi
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
