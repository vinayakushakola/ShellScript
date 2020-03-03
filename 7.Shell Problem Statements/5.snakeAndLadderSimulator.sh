
#!/bin/bash

echo "Welcome to Snake and Ladder Simulator"

START_POSITION=0
NO_PLAY=0
SNAKE=1
LADDER=2
WINNING_POSITION=10

dieCount=0

function rollDie() {
	dieValue=$((RANDOM%6+1))
	((dieCount++))
}

function checking () {
	case $((RANDOM%3)) in
		$NO_PLAY)
			playerPosition=$1
			;;
		$SNAKE)
			playerPosition=$(($1 - $2))
			;;
		$LADDER)
			playerPosition=$(($1 + $2))
			;;
	esac
	if [[ $playerPosition -lt $START_POSITION || $playerPosition -gt $WINNING_POSITION ]]
	then
		restartTheGame
	fi
	echo $playerPosition
}

function restartTheGame () {
	if [ $playerPosition $1 $2 ]
	then
		playerPosition=$(($currentPosition $3 $dieValue))
	fi
}

function startGame() {
	playerPosition1=0
	playerPosition2=0
	currentPlayer=-1
	SWITCH=-1
	while [[ $playerPosition1 -ne $WINNING_POSITION && $playerPosition2 -ne $WINNING_POSITION ]]
	do
		rollDie
		if [ $currentPlayer -eq -1 ]
		then
			playerPosition1=$(checking $playerPosition1 $dieValue)
			if [ $playerPosition1 -eq $WINNING_POSITION ]
			then
				echo "Player 1 Wins"
			fi
		else
			playerPosition2=$(checking $playerPosition2 $dieValue)
			if [ $playerPosition2 -eq $WINNING_POSITION ]
			then
				echo "Player 2 Wins"
			fi
		fi
		currentPlayer=$(($currentPlayer*$SWITCH))
	done
}
startGame
echo player 1 position: $playerPosition1
echo player 2 position: $playerPosition2
echo Dice count: ${dieCount[@]}
