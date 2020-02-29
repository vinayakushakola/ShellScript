#!/bin/bash 
read -p "Enter 1st number: " num1
read -p "Enter 2nd number: " num2
read -p "Enter 3rd number: " num3

cal_1=$(( $num1+($num2*$num3) ))
cal_3=$(( $num3+($num1/$num2) ))
cal_2=$(( ($num1%$num2)+$num3 ))
cal_4=$(( ($num1*$num2)+$num3 ))

echo $cal_1 $cal_2 $cal_3 $cal_4

if [[ $cal_1 -gt $cal_2 && $cal_3 && $cal_4 ]]
then
	echo $cal_1 is Maximum
elif [[ $cal_2 -gt $cal_1 && $cal_3 && $cal_4 ]]
then
	echo $cal_2 is Maximum
elif [[ $cal_3 -gt $cal_2 && $cal_3 && $cal_4 ]]
then
	echo $cal_3 is Maximum
else
	echo $cal_4 is maximum
fi
