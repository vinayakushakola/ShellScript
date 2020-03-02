#!/bin/bash

echo "Welcome to Employee Wage Computation"
declare -A employeeDailyWage

IsPartTime=1
IsFullTime=2
EmployeeRatePerHr=20;
Working_Days_Per_Month=20;
Working_Hrs_In_Month=100;

totalEmpWorkingHrs=0;
totalEmpWorkingDays=0;

function getWorkingHrs() {
	local isPresent=$1
	case $isPresent in
		$IsFullTime ) employeeHrs=8;;
		$IsPartTime ) employeeHrs=4;;
		* ) employeeHrs=0;;
	esac
	echo $employeeHrs
}

function calculateDailyWage() {
	local workHrs=$1
	wage=$(($workHrs*$EmployeeRatePerHr))
	echo $wage
}

while [[ $totalEmpWorkingHrs -lt $Working_Hrs_In_Month && $totalEmpWorkingDays -lt $Working_Days_Per_Month ]]
do
	((totalEmpWorkingDays++))
	workHrs="$( getWorkingHrs $((RANDOM%3)) )"
	totalEmpWorkingHrs=$(($totalEmployeeHrs + $workHrs))
	employeeDailyWage["$totalEmpWorkingDays"]="$( calculateDailyWage $workHrs )"
done

echo "Daily Wage " ${employeeDailyWage[@]}
echo "Days " ${!employeeDailyWage[@]}

