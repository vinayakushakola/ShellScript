#!/bin/bash

read -p "Think of a number between 1-100: " num

for (( i=1; i<=$(($num/2)); $num++ ))
do
	echo i
done
