#!/bin/bash
read -p "Enter word: " word
pat="^[0-9]*[a-zA-Z]{3}[0-9a-zA-Z]*$"
pat="^[a-zA-Z][0-9a-zA-z]*$"
pat="[0-9]{3}.[0-9]{3}.[0-9]{4}"
pat="/d{3}./d{3}./d{4}"
if [[ $word =~ $pat ]]
then
	echo yes
else
	echo no
fi
