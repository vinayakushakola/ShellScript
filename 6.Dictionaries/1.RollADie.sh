#!/bin/bash

die=0
declare -a dice
while [[ ${dice["$die"]} -ne 5 ]]
do
   die=$(( (RANDOM%6)+1 ))
   dice["$die"]=$(( ${dice["$die"]}+1 ))
done

echo "value: ${!dice[@]}"
echo "count: ${dice[@]}"
