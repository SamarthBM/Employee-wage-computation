#!/bin/bash -x
echo "Welcome to Employee wage computation"

attendance=$((RANDOM%2))

if [ $attendance -eq 0 ]
then
	echo "Employee is absent"
else
	echo "Employee is present"
fi

wage_per_hour=20
working_hour=8

echo "Daily employee wage is $(($attendance*$wage_per_hour*$working_hour))"
