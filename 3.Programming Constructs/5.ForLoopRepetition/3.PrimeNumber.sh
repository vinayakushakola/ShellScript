#!/bin/bash 
read -p "Enter a number to check whether it is  Prime Number or Not: " number
flag=0
if [ $number -gt 1 ]
then
	for (( n=2; n<=$(($number/2)); n++ ))
	do
		if [ $(($number%$n)) -eq 0 ]
		then
			echo $number is not a Prime Number
			flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo $number is a Prime Number
	fi
else
	echo $number is not a Prime Number
fi

