#!/bin/bash -x
echo "Welcome To EmpWageComputation"
empWagePerHr=20
empFullTime=1
empPartTime=2

function EmployeeManagement () {
	random=$((RANDOM%3))	
	case $random in 
	$empFullTime )
		empHr=8
		echo "EMployee Full time Present";;
	$empPartTime )
		empHr=4
		echo "EMployee Part time Present";;
	* )
		empHr=0
		echo "EMployee Absent";;
	esac
}
	
EmployeeManagement

salary=$(( $empWagePerHr * $empHr ))
echo $salary



