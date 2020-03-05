#!/bin/bash

echo "Registration Form"

function registrationForm () {
	read -p "Name: " name
	read -p "Phone No: " phone
	read -p "Email: " email
	read -p "Password: " password
	check
}
function check () {
	namePattern="^[A-Z]{1}?[a-z]{2,}[ ]?([A-Z]{1}?[a-z]{2,}*)$"
	emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
	phonePattern="^([0-9]{1,3}[ ][1-9]{1}[0-9]{9})$"
	passPattern="^[a-zA-Z0-9]{0,1}{8,}$"
	oneUpperCaseLetter="^[A-Za-z0-9]{0,1}([A-Z]+)?[a-zA-Z0-9]{8,}$"
	atleatOneNumeric="^(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9]{8,}$"
	if [[ $name =~ $namePattern ]]
	then
		echo -e "\n"$name is Successfully Registered
	else
		echo Invalid
	fi
	if [[ $phone =~ $phonePattern ]]
        then
                echo Phone number is Successfully Registered
        else
                echo Invalid
	fi
	if [[ $email =~ $emailPattern ]]
        then
                echo $email is Successfully Registered
        else
                echo Invalid
	fi
	if [[ $password =~ $passPattern ]]
        then
                echo $password is Successfully Registered
        else
                echo Invalid
	fi
	if [[ $password =~ $oneUpperCaseLetter ]]
	then
		echo $password Successfully registered one UpperCase
	else
		echo Invalid Uppercase
	fi
	if [[ $password =~ $atleatOneNumeric ]]
	then
		echo $password Successfully registered one numeric
	else
		echo Invalid One Numeric
	fi

}
registrationForm
