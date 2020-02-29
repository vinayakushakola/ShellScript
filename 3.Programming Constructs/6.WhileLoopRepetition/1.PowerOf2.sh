#!/bin/bash

read -p "Enter a number: " num
n=1
operator=$((2**$num))
if [ $operator -lt 257 ]
then
	op=257
else
	op=$operator
fi
while [ $n -lt $op ]
do
	echo 2 x $n = $(( 2*$n ))
	n=$(($n+1))
done
