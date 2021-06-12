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
num_of_days=20

wage_per_day=$(($wage_per_hour*$working_hour))
echo "wage per day of employee is $wage_per_day"

wage_for_month=$(($wage_per_day*$num_of_days))
echo "Wage of employee for a month is $wage_for_month"
