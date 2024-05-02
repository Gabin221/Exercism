#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    input=$1
	IFS='- _*'
    acronym=""
    for word in $input;
    do
        letter="${word:0:1}"
        acronym+=${letter^^}
    done
    echo "$acronym"
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
