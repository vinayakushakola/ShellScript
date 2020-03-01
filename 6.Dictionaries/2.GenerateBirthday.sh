#!/bin/bash

function generateBirthdays () {
	birth=0
	while [ $birth -lt 50 ]
	do
		generateBirthDate=$((RANDOM%31))
		arr[((birth++))]="$generateBirthDate/03/1992"
	done
	echo ${arr[@]}
	echo ${#arr[@]}
}

echo $( generateBirthdays )
