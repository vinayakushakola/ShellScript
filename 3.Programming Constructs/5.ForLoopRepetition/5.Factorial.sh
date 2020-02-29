#!/bin/bash

read -p "Enter a number: " num
fact=1
for (( n=1; n<=num; n++ ))
do
	fact=$(( $fact * $n ))
done
echo $fact
