#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 1 ]; 
then 
    x=$1
    y=$x
    b=10
    digit_count=0
    while [ $y > 0 ]:
    do
        digit_count=$((digit_count+1))
        y=$((y/b))
    done
    total=0
    while [ $x > 0 ]:
    do
        total=$((total+(x%b)**digit_count))
        x=$((x/b))
    done
    echo "total=$total"
else 
    echo "Usage: acronym.sh <person>"
    exit 1
fi
