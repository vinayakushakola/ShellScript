#!/bin/bash

die=0
declare -A dice
while [[ ${dice["$die"]} -ne 10 ]]
do
   die=$(( (RANDOM%6)+1 ))
   dice["$die"]=$(( ${dice["$die"]}+1 ))
done

echo ${dice[@]}
echo ${!dice[@]}
