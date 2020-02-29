#!/bin/bash -x
sum=0
for (( run=1; run<=5; run++ ))
do
	generateNumber=$((RANDOM%100))
	sum=$(( $sum+$generateNumber ))
done
average=$(($sum/5))
