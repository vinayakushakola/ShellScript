#!/bin/bash

read -p "Enter a number to check Palindrome or not: " num

function isPalindrome () {
	rev=0
	number=$1
	while [ $number -gt 0 ]
	do
		d=$(( $number%10 ))
		rev=$(( $rev*10 + $d ))
		number=$(( $number/10 ))
	done
	echo $rev
}

result=$( isPalindrome $num )
if [ $result -eq $num ]
then
	echo $num is Palindrome
else
	echo $num is Not Palindrome
fi
