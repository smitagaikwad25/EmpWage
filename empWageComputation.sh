#!/bin/bash -x
echo "Welcome To EmpWageComputation"
<<<<<<< HEAD

=======
>>>>>>> uc8_DailyAndTotalWage
#constant
EMP_WAGE_PER_HR=20 
EMP_FULL_TIME=1
EMP_PART_TIME=2 
DAYZ_PER_MONTH=20
TOTAL_MAX_HR=100

#variables
totalSalary=0 
totalHr=0
salary=0

<<<<<<< HEAD
#Dictionary

declare -A wages 
=======
#Array
declare -a ArrayForWages
>>>>>>> uc8_DailyAndTotalWage

function GetWorkingHours ()
{

	for (( i=1; i<=$DAYZ_PER_MONTH; i++ ))
	do
#       echo "Total work hours is = " $totalHr

#       echo "Total wages for month is =" $totalSalary

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
<<<<<<< HEAD
	salary=$(( $EMP_WAGE_PER_HR * $EMP_HR ))


	totalSalary=$(( $EMP_WAGE_PER_HR * $totalHr  ))
	wages[i]="$salary"

#	echo "wages per day =" ${wages[i]}

	wages[totalSalary]="$totalSalary"

#	echo "totalSalary =" ${wages[totalSalary]}
done
	
=======
	Salary=$(( $EMP_WAGE_PER_HR * $EMP_HR ))

	totalSalary=$(( $EMP_WAGE_PER_HR * $totalHr  ))

	ArrayForWages=( $Salary $totalSalary )
#        echo "Daily wages along with total wages" ${ArrayForWages[@]} 






	done

>>>>>>> uc8_DailyAndTotalWage
}

	GetWorkingHours 

