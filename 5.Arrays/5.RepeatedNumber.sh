#!/bin/bash

count=0
for (( n=0; n<=100; n++ ))
do
	if [ $n -eq 0 ]
	then
		continue
	elif [ $(($n%10)) -eq $(($n/10)) ]
	then
		arr[((count++))]=$n
	fi
done
echo ${arr[@]}
