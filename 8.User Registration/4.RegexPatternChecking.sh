#!/bin/bash
read -p "Enter word: " word
pat="^[0-9]*[a-zA-Z]{3}[0-9a-zA-Z]*$"
pat="^[a-zA-Z][0-9a-zA-z]*$"
if [[ $word =~ $pat ]]
then
	echo yes
else
	echo no
fi
