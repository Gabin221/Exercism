#!/usr/bin/env bash

# echo "What is your input ?"
# read varname
input="Liquid-crystal display"
arrIN=(${input//blank/ })
taille=${#arrIN}+1
accronyme=""

for (( i=0; i<=taille; i++ ))
do
    mot=${arrIN[i]^}
    accronyme=$accronyme"${mot::1}"
done

echo "$accronyme"
