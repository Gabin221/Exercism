#!/usr/bin/env bash

nbr=$#
if [ $nbr -eq 2 ]; 
then 
	name=$1
	like=$2
	if [ "$like" = "yes" ];
	then 
		echo "One for $name, one for me."
	else
		echo "One for you, one for me."
	fi
else 
    echo "One for you, one for me."
fi
