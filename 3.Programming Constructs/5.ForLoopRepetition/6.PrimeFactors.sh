#!/bin/bash

read -p "Enter a number: " num
for (( n=1; n<=$num; n++ ))
do
	if [ $(($n*$n)) -lt $(($num+1)) ]
	then
		if [ $(($num%$n)) -eq 0 ]
		then
			echo $n
		fi
	fi
done
