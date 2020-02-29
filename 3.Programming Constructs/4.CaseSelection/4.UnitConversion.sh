
#!/bin/bash -x

read -p "Enter a number: " number
echo -e "Enter - 1,2,3,4\n1.Feet to Inch\n2.Feet to Meter\n3.Inch to Feet\n4.Meter to Feet: "
read operator
case $operator in
	1)
		echo "scale=2; $number*12" | bc;;
	2)
		echo "scale=2; $number/3.28" | bc;;
	3)
		echo "scale=2; $number/12" | bc;;

	4)
		echo "scale=2; $number*3.28" | bc;;
esac
