#!/bin/bash -x
echo "Welcome To EmpWageComputation"
empWagePerHr=20 
empFullTime=1
empPartTime=2 
dayzPerMonth=20
TotalSalary=0 
Total_hr=0
Total_Max_hr=100 

function EmployeeManagement () {

	while [ $Total_hr -le $Total_Max_hr  ]
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
		
	Total_hr=$(($Total_hr + $empHr))

	salary=$(( $empWagePerHr * $Total_hr ))

	TotalSalary=$(( $salary + $TotalSalary ))
	done
}

EmployeeManagement
 echo "Total Salary for 100hr is " = $TotalSalary        

