#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

empWagePerHrs=20
empSalary=0
TotalEmpSalary=0

IS_FULL_TIME=1
IS_PART_TIME=2
DaysPerMonth=20

function ChechEmpWage()
{
 for (( i=1; i<=$DaysPerMonth;i++ ))
 do
        myRan=$((RANDOM%3))
        case $myRan in
		$IS_FULL_TIME)
	   		echo -e "\nEmployee is present: Full Time"
           		empHrs=8
			;;
	        $IS_PART_TIME)
	   		echo -e "\nEmployee is present: Part Time"
	   		empHrs=4
        		;;
                *)
                        echo -e "\nEmployee is absent"
                        empHrs=0
	esac

        empSalary=$(( $empWagePerHrs * $empHrs ))
        echo "Day $i : Salary of the employee: $empSalary"
        TotalEmpSalary=$(( $empSalary + $TotalEmpSalary))
 done
}

echo "Check Attendance:"
ChechEmpWage

#Calculating Salary
empSalary=$(( $empWagePerHrs * $empHrs ))
echo "----------------------------------------------"
echo -e "\nTotal Monthly Salary: $TotalEmpSalary"
