#!/bin/bash -x
echo "Welcome To EmpWageComputation"
EMP_WAGE_PER_HR=20 
EMP_FULL_TIME=1
EMP_PART_TIME=2 
DAYZ_PER_MONTH=20
TOTAL_MAX_HR=100

totalSalary=0 
totalHr=0
 

function GetWorkingHours ()
{
	
	for (( i=1; i<=$DAYZ_PER_MONTH; i++ ))
	do
	random=$((RANDOM%3))
	case $random in

     	$EMP_FULL_TIME )
		EMP_HR=8 ;;

	$EMP_PART_TIME )
		EMP_HR=4 ;;
	
	* )
		EMP_HR=0 ;;
	esac
		
	totalHr=$(( $totalHr + $EMP_HR ))
	Salary=$(( $EMP_WAGE_PER_HR * $EMP_HR ))
	echo "Daily Wages = " $Salary
	totalSalary=$(( $EMP_WAGE_PER_HR * $totalHr  ))
done
	
}

GetWorkingHours 

#	echo "Total work hours is = " $totalHr
	echo "Total wages for month is =" $totalSalary
