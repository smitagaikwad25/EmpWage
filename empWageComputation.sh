#!/bin/bash -x
echo "Welcome To EmpWageComputation"
empWagePerHr=20

function EmployeeManagement ()
{
	Random=$((RANDOM%2))
	if [ $Random -eq 1 ]
	then
		echo "Employee present" 
		empHr=8
	else
		echo "Employee Absent"
	        empHr=0
	fi
}

EmployeeManagement

salary=$(( $empWagePerHr * $empHr ))
echo $salary


