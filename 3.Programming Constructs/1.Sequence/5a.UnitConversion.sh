#!/bin/bash -x

read -p "Enter inch to convert in ft: " number
echo "scale=2;  $number / 12" | bc 


