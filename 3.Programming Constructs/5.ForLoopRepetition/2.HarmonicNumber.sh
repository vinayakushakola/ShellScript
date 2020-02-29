#!/bin/bash 
read -p "Enter a number: " num
harmonic=0
for (( n=1; n<=$num; n++ ))
do
	h=echo "scale=2; (1/$n) | bc
	harmonic=$(($harmonic+$h))
done
echo $harmonic
