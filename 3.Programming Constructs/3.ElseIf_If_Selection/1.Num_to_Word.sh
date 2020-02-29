#!/bin/bash -x
read -p "Enter number from 1-9: " num

if [ $num -eq 0 ]
then
	echo  "zero "
elif [ $num -eq 1 ]
then
	echo  "one "
elif [ $num -eq 2 ]
then
	echo  "two "
elif [ $num -eq 3 ]
then
	echo  "three "
elif [ $num -eq 4 ]
then
	echo  "four "
elif [ $num -eq 5 ]
then
	echo "Five"
elif [ $num -eq 6 ]
then
	echo "Six"
elif [ $num -eq 7 ]
then
	echo "Seven"
elif [ $num -eq 8 ]
then
	echo "Eight"
elif [ $num -eq 9 ]
then
	echo "Nine"
fi
