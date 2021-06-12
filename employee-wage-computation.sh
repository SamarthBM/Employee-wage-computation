#!/bin/bash -x
echo "Welcome to Employee wage computation"

max_hours=100
max_days=20

total_working_days=0
total_working_hours=0

while [ $total_working_hours -lt $max_hours -a $total_working_days -lt $max_days ]
do
	(( total_working_days++ ))
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
		total_working_hours=$((total_working_hours+$working_hour))
done
wage_per_hour=20

total_wage=$(($total_working_hours*$wage_per_hour))
echo "Total wage is $total_wage"
