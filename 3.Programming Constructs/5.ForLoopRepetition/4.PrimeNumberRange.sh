#!/bin/bash
for (( number=1; number<=100; number++ ))
do
	flag=0
	if [ $number -gt 1 ]
	then
		for (( n=2; n<=$(($number/2)); n++ ))
		do
			if [ $(($number%$n)) -eq 0 ]
			then 
				flag=1
				break
			fi
		done
		if [ $flag -eq 0 ]
		then
			echo $number
		fi
	fi
done
