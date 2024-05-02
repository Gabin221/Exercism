#!/usr/bin/env bash


question=$1
if [[ ${question} =~ ^[[:space:]]*$ ]];
then
    echo "Fine. Be that way!"
elif [[ ${question} =~ ^[^[:lower:]]+$ && ${question} =~ [[:upper:]] ]] && [[ ${question} =~ \?\ *$ ]];
then
    echo "Calm down, I know what I'm doing!"
elif [[ ${question} =~ ^[^[:lower:]]+$ && ${question} =~ [[:upper:]] ]];
then
    echo "Whoa, chill out!"
elif [[ ${question} =~ \?\ *$ ]];
then
    echo "Sure."
else
    echo "Whatever."
fi
