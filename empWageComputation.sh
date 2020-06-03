#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

empWagePerHrs=20
empSalary=0
TotalEmpSalary=0

IS_FULL_TIME=1
IS_PART_TIME=2
DaysPerMonth=20

TotalHr=0
TotalMaxHr=100

function GetWorkingHours()
{
  for (( i=1;i<$DaysPerMonth;i++ ))
  do
        myRan=$((RANDOM%3))
        case $myRan in
		$IS_FULL_TIME)
           		empHrs=8
			;;
	        $IS_PART_TIME)
	   		empHrs=4
        		;;
                *)
                        empHrs=0
	esac

	TotalHr=$(( $TotalHr + $empHrs ))
        #empSalary=$(( $empWagePerHrs * $TotalHr ))
        #TotalEmpSalary=$(( $empSalary + $TotalEmpSalary))
 done
}

#echo "Check Attendance:"
GetWorkingHours

#Calculating Salary
#empSalary=$(( $empWagePerHrs * $empHrs ))
#echo "----------------------------------------------"
#echo -e "\nTotal Salary for 100hr: $TotalEmpSalary"

echo -e "\nTotal Work Hours: $TotalHr"
