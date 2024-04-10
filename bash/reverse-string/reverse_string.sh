#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    input=$1

    for (( i=1; i<=${#input}; i++ ))
    do
        echo $(echo $input[i] | cut -c$i)
    done
else
    echo "Usage: reverse_string.sh <string2>"
    exit 1
fi