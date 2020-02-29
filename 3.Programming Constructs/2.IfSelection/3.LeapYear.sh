#!/bin/bash 

read -p "Enter a year: " year
check1=$(($year%400))
check2=$(($year%4))
check3=$(($year%100))
if [ $check1 -eq 0 ]
then 
	echo $year is a Leap Year
elif [ $check2 -eq 0 -a $check3 -ne 0 ]
then
	echo $year is A Leap Year
else
	echo $year is not a Leap Year
fi
