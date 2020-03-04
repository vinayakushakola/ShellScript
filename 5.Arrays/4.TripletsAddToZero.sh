#!/bin/bash
read -p "Enter size of array: " num
for(( n=0; n<$num; n++))
do
	read -p "Enter number: " arr[$n]
done

echo Array is ${arr[@]}

for(( i=0; i<$((${#arr[@]}-2)); i++ ))
do
	for(( j=(($i+1)); j<${#arr[@]}-1; j++ ))
	do
		for(( k=$(($j+1)); k<${#arr[@]}; k++ ))
		do
			if [ $((${arr[i]} + ${arr[j]} + ${arr[k]})) -eq 0 ]
			then
				echo ${arr[i]} ${arr[j]} and ${arr[k]}
         		fi
      		done
   	done
done

