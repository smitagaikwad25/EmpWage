#!/bin/bash -x
echo "Welcome To EmpWageComputation"
empWagePerHr=20
empFullTime=1
empPartTime=2
dayzPerMonth=20
TotalSalary=0
function EmployeeManagement () {

for (( i=1; i<=$dayzPerMonth; i++  ))
do	
	random=$((RANDOM%3))	
	case $random in 
	$empFullTime )
		empHr=8 ;;

	$empPartTime )
		empHr=4 ;;
	
	* )
		empHr=0 ;;
	esac

	salary=$(( $empWagePerHr * $empHr ))
	echo "daily sal: = $salary "
	TotalSalary=$(( $salary + $TotalSalary ))
	done
}

EmployeeManagement
echo "Total Salary Per Month  is = $TotalSalary"
