#!/bin/bash -x
echo "Welcome to Employee wage computation"

attendance=$((RANDOM%3))

if [ $attendance -eq 0 ]
then
	echo "Employee is absent"
elif [ $attendance -eq 1 ]
then
	echo "Employee is present full time"
	working_hour=8
else
	echo "Employee is present for part time"
	working_hour=4
fi
wage_per_hour=20

echo "Daily wage of employee is $(($wage_per_hour*$working_hour))"
