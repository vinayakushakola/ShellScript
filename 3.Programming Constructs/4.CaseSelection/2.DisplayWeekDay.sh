#!/bin/bash

read -p "Enter a number to display weekday: " day

case $day in
	0) echo "Sunday";;
	1) echo "Monday";;
	2) echo "Tuesday";;
	3) echo "Wednesday";;
	4) echo "thursday";;
	5) echo "Friday";;
	6) echo "Saturday";;
esac

