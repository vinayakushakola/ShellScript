#!/bin/bash -x

for (( run=1; run<=5; run++ ))
do
	generateNumber=$((RANDOM%1000))
	if [ $generateNumber >
