#!/bin/bash

stake=100
goal=200
wins=0
loss=0
totalGambles=0
while [[ $stake -gt 0 && $stake -lt $goal ]]
do
	generateGambleNum=$((RANDOM%2))
	if [ $generateGambleNum -eq 1 ]
	then
		wins=$(($wins+1))
		stake=$(($stake+1))
		echo -e "Yeah Won\nStake=$stake\nGoal=$goal\n"
	else
		loss=$(($loss+1))
                stake=$(($stake-1))
		echo -e "Loose!\nStake=$stake\nGoal=$goal\n" 
	fi
	totalGambles=$(($totalGambles+1))
done
function percentage (){
	echo "scale=3; ($1/$2)*100" | bc
}

echo Wins: $wins
echo Loss: $loss
echo "Total Gambles Played: $totalGambles"
echo Win Percentage: $( percentage $wins $totalGambles )
echo Loss Percentage: $( percentage $loss $totalGambles )
