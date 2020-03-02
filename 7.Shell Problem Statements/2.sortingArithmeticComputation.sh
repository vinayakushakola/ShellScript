#!/bin/bash

declare -A results
read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number: " c

result_1=$(($a+$b*$c))
result_2=$(($a*$b+$c))
result_3=`echo "scale=2; $c+$a/$b" | bc`
result_4=$(($a%$b+$c))

results[result_1]=$result_1
results[result_2]=$result_2
results[result_3]=$result_3
results[result_4]=$result_4

count=0
for result in ${results[@]}
do
	resultArr[((count++))]=$result
done
echo Original Array: ${resultArr[@]}

length=${#resultArr[@]}
for((i=0;i<$length-1;i++))
do
	for((j=0;j<$length-1;j++))
	do
		if [ ${resultArr[j]%.*} -lt ${resultArr[j+1]%.*} ]
		then
			temp=${resultArr[j]}
			resultArr[j]=${resultArr[j+1]}
			resultArr[j+1]=$temp
		fi
	done
done
echo Descending Order: ${resultArr[@]}

for((i=0;i<$length-1;i++))
do
        for((j=0;j<$length-1;j++))
        do
                if [ ${resultArr[j]%.*} -gt ${resultArr[j+1]%.*} ]
                then
                        temp=${resultArr[j]}
                        resultArr[j]=${resultArr[j+1]}
                        resultArr[j+1]=$temp
                fi
        done
done
echo Ascending Order: ${resultArr[@]}

