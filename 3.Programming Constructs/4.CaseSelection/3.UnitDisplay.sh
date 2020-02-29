#!/bin/bash

read -p "Enter a number: " number

case $number in
	0) echo $number tens;;
	10) echo $number tens;;
	100) echo $number hundreds;;
	1000) echo $number thosands;;
esac
