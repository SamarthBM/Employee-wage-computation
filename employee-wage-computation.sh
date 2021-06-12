#!/bin/bash -x
echo "Welcome to Employee wage computation"

attendance=$((RANDOM%3))

case $attendance in
	0)	echo "Employee is absent" 
		 ;;

	1)	echo "Employee is present full time"
		working_hour=8
		 ;;

	2)	echo "Employee is present for part time"
		working_hour=4
		 ;;
esac
wage_per_hour=20

echo "Daily wage of employee is $(($wage_per_hour*$working_hour))"
