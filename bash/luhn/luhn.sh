#!/usr/bin/env bash

input=$1

if [[ $input =~ [^0-9[:space:]] ]]; then
    echo false
    exit 0
fi

input=$(echo "$input" | tr -d ' ' | rev)

sum=0
for (( i=0; i<${#input}; i++ )); do
    digit=${input:i:1}

    if [ $((i%2)) -eq 1 ]; then
        digit=$((digit * 2))
        if [ $digit -gt 9 ]; then
            digit=$((digit - 9))
        fi
    fi

    sum=$((sum + digit))
done

if [ $((sum % 10)) -eq 0 ] && [ ${#input} -gt 1 ]; then
    echo true
else
    echo false
fi
