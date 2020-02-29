#!/bin/bash 
read -p "Enter a month from 1-12: " m
read -p "Enter a date: " d
read -p "Enter a year: " y

y0=$(( $y - ((14-$m)/12) ))
x=$(( $y0 + ($y0/4) - ($y0/100) + ($y0/400) ))
m0=$(( $m + (12*((14-$m)/12)) - 2 ))
d0=$(( ($d + $x +((31*$m0)/12))%7 ))

declare -A days
days[0]="Sunday"
days[1]="Monday"
days[2]="Tuesday"
days[3]="Wednesday"
days[4]="Thursday"
days[5]="Friday"
days[6]="Saturday"
echo ${days[$d0]}

