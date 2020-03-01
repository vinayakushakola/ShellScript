#!/bin/bash

echo -e "Enter 1. Deg to F \n2. Deg to C "
read $op
read -p "Enter Temp: " temp

function DegToF () {
	deg=$1
	if [[ $deg -ge 0 && $deg -le 100 ]]
	then
		calc_1=`echo "scale=2; 9/5" | bc`
		Fehrenheit=`echo "scale=2; $deg*$calc_1 + 32" | bc`
	fi
	echo $Fehrenheit
}
function DegtoC () {
	feh=$1
	if [[ $feh -ge 32 && $feh -le 212 ]]
	then
		calc_1=`echo "scale=2; 5/9" | bc`
		Celsius=`echo "scale=2; $(($feh - 32)) * $calc_1" | bc`
	fi
	echo $Celsius
}

case $op in
	1) result=$( DegtoF $temp );;
	2) result=$( DeftoC $temp );;
esac
echo $result
