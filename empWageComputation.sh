#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

empWagePerHrs=20
empSalary=0

IS_FULL_TIME=1
IS_PART_TIME=2

function ChechEmpWage()
{
        myRan=$((RANDOM%3))
        case $myRan in
		$IS_FULL_TIME)
	   		echo "Employee is present: Full Time"
           		empHrs=8
			;;
	        $IS_PART_TIME)
	   		echo "Employee is present: Part Time"
	   		empHrs=4
        		;;
                *)
                        echo "Employee is absent"
                        empHrs=0
	esac
}

echo "Check Attendance:"
ChechEmpWage

#Calculating Salary
empSalary=$(( $empWagePerHrs * $empHrs ))

echo "Salary of the employee: $empSalary"
