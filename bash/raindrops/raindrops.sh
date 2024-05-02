#!/usr/bin/env bash

nbr=$#
arg=$1
res=""
if [ $nbr -eq 1 ]; 
then 
	if [ $(($arg%3)) -eq 0 ]; 
    then 
        res=$res"Pling"
    fi
	if [ $(($arg%5)) -eq 0 ]; 
    then 
        res=$res"Plang"
    fi
	if [ $(($arg%7)) -eq 0 ]; 
    then 
        res=$res"Plong"
    fi
    if [ $(($arg%3)) -ne 0 ] && [ $(($arg%5)) -ne 0 ] && [ $(($arg%7)) -ne 0 ]; 
    then
        res=$res"$arg"
    fi
else 
    echo "Un seul argument autorisé"
    exit 1
fi

echo "$res"
