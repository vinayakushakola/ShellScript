#!/bin/bash 

read -p "Enter a day 1-31: " date
read -p "Enter a month 1-12: " month

if [[ $month -eq 3 || $month -eq 6 ]]
then
	if [ $date -ge 20 ]
	then
		echo True
	else
		echo False
	fi
elif [[ $month -gt 2 && $month -lt 7 ]]
then
	echo True
else
	echo False
fi
