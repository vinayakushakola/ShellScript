#!/bin/bash

read -p "Enter a number: " num
count=0
for (( n=1; n<=$num; n++ ))
do
        if [ $(($n*$n)) -lt $(($num+1)) ]
        then

                if [ $(($num%$n)) -eq 0 ]
                then
                        primeFactors[((count++))]=$n
                fi
        fi
done
echo ${primeFactors[@]}
