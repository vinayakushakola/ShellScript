#!/bin/bash -x

sum=0
for (( run=1; run<=2; run++ ))
do
	DiceNumber=$((RANDOM%6+1))
	sum=$(($sum + $DiceNumber))
done
echo $sum
