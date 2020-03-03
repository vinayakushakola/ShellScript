#!/bin/bash
echo "Welcome to Gambling Simulation"

declare -A winOrLooseDictionary

stake=100
winningAmount=0
wonCount=0
lostCount=0
loosingAmount=0
currentAmount=0
Bet=1
maximumLimit=$(( $stake + ($stake*50/100) ))
minimumLimit=$(( $stake - ($stake*50/100) ))
echo $minimumLimit $maximumLimit
noOfDays=20


function winOrLoose() {
	if [ $stake -eq $maximumLimit ]
	then
		winningAmount=$(($winningAmount+50))
                stake=100
                (( wonCount++ ))
                currentAmount=$(($currentAmount+50))
                winOrLooseDictionary[$1]="Win"
	else
		loosingAmount=$(($loosingAmount + 50))
                stake=100
                (( lostCount++ ))
                currentAmount=$(($currentAmount-50))
                winOrLooseDictionary[$1]="Lost"
	fi
}

function playGame() {
	for((i=1;i<=$noOfDays;i++))
	do
		while [[ $stake -lt $maximumLimit && $stake -gt $minimumLimit ]]
		do
			if [ $((RANDOM%2)) -eq 1 ]
        		then
                		stake=$(($stake+$Bet))
        		else
                		stake=$(($stake-$Bet))
        		fi
		done
		winOrLoose $i
	done
	if [ $winningAmount -gt $loosingAmount ]
	then
		echo  You won by $(($winningAmount - $loosingAmount)) Rs in 20 days
	elif [ $winningAmount -lt $loosingAmount ]
	then
		echo You lost by $(($loosingAmount - $winningAmount)) Rs in 20 days
	else
		echo You neither lose nor win
	fi

	echo -e "\nNo of days Gambler won is $wonCount"
	echo "No of days Gambler lost is $lostCount"
	echo -e "\nTotal Amount won is $winningAmount"
	echo "Total amount lost is $loosingAmount"

	echo -e "\n"Days: ${!winOrLooseDictionary[@]}
	echo Win or Loose: ${winOrLooseDictionary[@]}
}


while [ $currentAmount -ge 0 ]
do
	playGame
	echo -e "\nDo you want to continue for next month(y/n): "
	read result
	if [[ $result = "y" || $result = "Y" ]]
	then
		echo next month
		winningAmount=0
		loosingAmount=0
		wonCount=0
		lostCount=0
		currentAmount=0
	else
		echo -e "\nBye Bye"
		break
	fi
done
