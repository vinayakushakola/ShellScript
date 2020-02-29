
#!/bin/bash

# Enter three numbers and do following arithmetic operations
# 1.a+b*c	3.c+a/b
# 2.a%b+c	4.a*b+c

read -p "Enter a number: " a
read -p "Enter a number: " b
read -p "Enter a number: " c


z=$(( $a + ($b*$c) ))
y=$(( ($a%$b) + $c ))
x=$(( $c + ($a/$b) ))
w=$(( ($a*$b) + $c ))

echo -e "$z \n$y \n$x \n$w"
