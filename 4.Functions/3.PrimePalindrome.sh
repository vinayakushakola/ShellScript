
#!/bin/bash -x
read -p "Enter a Number to Check palindrome and Prime Number or Not: " num

function isPalindrome () {
        rev=0
        local number=$1
        while [ $number -gt 0 ]
        do
                d=$(( $number%10 ))
                rev=$(( $rev*10 + $d ))
                number=$(( $number/10 ))
        done
        echo $rev
}

function isPrime () {
        local number=$1
        count=0
        for(( n=2; n<=$(($number/2)); n++))
        do
		mod=$(( $number%$n ))
                if [ $mod == 0 ]
                then
                        count=1
                        echo Not a Prime Number
                        break
                fi
        done
        if [ $count == 0 ]
        then
                echo Prime Number
        fi
}
result=$( isPalindrome $num )
if [ $result -eq $num ]
then
	echo $num is a Palindrome and $( isPrime $num )
else
        echo $num is not a Palindrome and $( isPrime $num )
fi
