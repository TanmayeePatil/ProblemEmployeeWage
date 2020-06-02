#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

empWagePerHrs=20
empSalary=0

function ChechEmpWage()
{
	myRan=$((RANDOM%3))
	if [ $myRan -eq 1 ];then
	   echo "Employee is present: Full Time"
           empHrs=8
	elif [ $myRan -eq 2 ];then
	   echo "Employee is present: Part Time"
	   empHrs=4
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
