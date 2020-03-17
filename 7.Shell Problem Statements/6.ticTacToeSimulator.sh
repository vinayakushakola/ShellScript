#!/bin/bash

board=("-" "-" "-" "-" "-" "-" "-" "-" "-")
current_player="X"
gameStillGoing=true
function resetBoard () {
	board=("-" "-" "-" "-" "-" "-" "-" "-" "-")
}
function Displayboard () {
	echo
	echo ${board[0]} "|" ${board[1]} "|" ${board[2]}
	echo ${board[3]} "|" ${board[4]} "|" ${board[5]}
	echo ${board[6]} "|" ${board[7]} "|" ${board[8]}
	echo
}
function playGame () {
	Displayboard
	while [ $gameStillGoing == true ]
	do
		handle_turn $current_player
		check_if_Gameover
		flipPlayer
	done
}

function flipPlayer () {
	if [ $current_player == "X" ]
	then
		current_player="O"
	else
		current_player="X"
	fi
}

function handle_turn() {
	position=0
	count=0
	valid=false
	while [ $valid == false ]
	do
		if [ $current_player == "O" ]
		then
            position=$((RANDOM%9))
        else
            read -p "Enter your position from 1-9: " position
			position=$(($position-1))
		fi
        if [ ${board[$position]} == "-" ]
		then
			((count++))
            valid=true
        else
            if [ $current_player == "X" ]
			then
                echo "Choose differnt position"
			fi
		fi
	done
    	board[$position]=$1
    	Displayboard
}
function check_if_Gameover () {
	if [[ ( ${board[0]} == "X"  &&  ${board[1]} == "X"  &&  ${board[2]} == "X" ) || ( ${board[0]} == "O"  &&  ${board[1]} == "O"  &&  ${board[2]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[3]} == "X"  &&  ${board[4]} == "X"  &&  ${board[5]} == "X" ) || ( ${board[3]} == "O"  &&  ${board[4]} == "O"  &&  ${board[5]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[6]} == "X"  &&  ${board[7]} == "X"  &&  ${board[8]} == "X" ) || ( ${board[6]} == "O"  &&  ${board[7]} == "O"  &&  ${board[8]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[0]} == "X"  &&  ${board[3]} == "X"  &&  ${board[6]} == "X" ) || ( ${board[0]} == "O"  &&  ${board[3]} == "O"  &&  ${board[6]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[1]} == "X"  &&  ${board[4]} == "X"  &&  ${board[7]} == "X" ) || ( ${board[1]} == "O"  &&  ${board[4]} == "O"  &&  ${board[7]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[2]} == "X"  &&  ${board[5]} == "X"  &&  ${board[8]} == "X" ) || ( ${board[2]} == "O"  &&  ${board[5]} == "O"  &&  ${board[8]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[0]} == "X"  &&  ${board[4]} == "X"  &&  ${board[8]} == "X" ) || ( ${board[0]} == "O"  &&  ${board[4]} == "O"  &&  ${board[8]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [[ ( ${board[6]} == "X"  &&  ${board[4]} == "X"  &&  ${board[2]} == "X" ) || ( ${board[6]} == "O"  &&  ${board[4]} == "O"  &&  ${board[2]} == "O" ) ]]
	then
		echo $current_player wins
		gameStillGoing=false
	elif [ $count == 9 ]
	then
		echo "It's a Tie"
		gameStillGoing=false
	fi
}

playGame
