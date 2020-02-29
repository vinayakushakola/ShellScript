#!/bin/bash

read -p "Enter a number: " num
if [ $num -lt 10 ]
then
	echo $num is units
elif [ $num -lt 100 ]
then
	echo $num is tens
elif [ $num -lt 1000 ]
then
	echo $num is Hundreds
else
	echo $num is Thousands
fi

