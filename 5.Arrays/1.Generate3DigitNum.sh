#!/bin/bash

for (( n=1; n<=10; n++ ))
do
	arr[$n]=$((RANDOM%900 + 100))
done
echo ${arr[@]}
