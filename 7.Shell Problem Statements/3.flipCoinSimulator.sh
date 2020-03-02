#!/bin/bash

echo "Welcome to Flip Coin Simulation"
function flipCoin () {
	local num=$1 option=$2
	combination=""
	for ((n=1; n<=$num; n++))
	do
		for ((m=1; m<=$option; m++ ))
		do
			checkCoin=$((RANDOM%2))
			if [ $checkCoin -eq 0 ]
			then
				combination+=H
			else
				combination+=T
			fi
		done
		combination+=" "
	done
	echo $combination
}
function addCombination () {
	local combination=""
	combination+=$1" "
}
read -p "Enter Number of times you want to Flip a coin: " num
echo -e "Enter \n1.Singlet Combination \n2.Doublet Combination \n3.Triplet Combination"
read option

echo $( flipCoin $num $option )
