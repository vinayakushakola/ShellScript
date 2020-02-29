#!/bin/bash -x

read -p "Enter a number to Check Even or Odd: " number
check=$(($number%2))
if [ $check -eq 0 ]
then 
	echo $number is an Even Number
else
	echo $number is an Odd Number
fi
