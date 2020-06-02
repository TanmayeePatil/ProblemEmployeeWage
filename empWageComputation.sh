#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

empWagePerHrs=20
empSalary=0

function ChechEmpWage()
{
	myRan=$((RANDOM%2))
	if [ $myRan -eq 1 ];then
	   echo "Employee is present"
           empHrs=8
	else
	   echo "Employee is absent"
	   empHrs=0
	fi
}

echo "Check Attendance:"
ChechEmpWage

#Calculating Salary
empSalary=$(( $empWagePerHrs * $empHrs ))

echo "Salary of the employee: $empSalary"


