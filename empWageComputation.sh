#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

function CheckAttendance()
{
	myRan=$((RANDOM%2))
	if [ $myRan -eq 1 ];then
	   echo "Employee is present"
	else
	   echo "Employee is absent"
	fi
}

echo "Check Attendance:"
CheckAttendance

