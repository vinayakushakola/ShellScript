#!/bin/bash
count=0
while [ $count -le 10 ]
do
	declare -A store
	generateNumber=$((RANDOM%6+1))
	case $generateNumber in
		1) store[1]=$((${store[0]}+1))
		   count=$(($count+1));;
		2) store[2]=$((${store[1]}+1));;
		3) store[3]=$((${store[2]}+1));;
		4) store[4]=$((${store[3]}+1));;
		5) store[5]=$((${store[4]}+1));;
		6) store[6]=$((${store[5]}+1));;
	esac
done
echo ${!store[@]}
echo ${store[@]}
