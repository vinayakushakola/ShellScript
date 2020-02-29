#!/bin/bash 

read -p "Enter a number: " num
for (( n=1; n<=$num**2; n++ ))
do
	echo 2 x $n = $(($n*2))
done
