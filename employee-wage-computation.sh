#!/bin/bash -x
echo "Welcome to Employee wage computation"

work_hours ()
{

	attendance=$1

	case $attendance in

	0)
		working_hour=0
		 ;;

	1)
		working_hour=8
		 ;;

	2)
		working_hour=4
		 ;;
	esac
	echo "$working_hour"
}

max_hours=100
max_days=20

total_working_days=0
total_working_hours=0

while [ $total_working_hours -lt $max_hours -a $total_working_days -lt $max_days ]
do
        (( total_working_days++ ))

	attendance=$((RANDOM%3))

	working_hour=$(work_hours $attendance)

	total_working_hours=$((total_working_hours+$working_hour ))
done
wage_per_hour=20

total_wage=$(($total_working_hours*$wage_per_hour))
echo "Total wage is $total_wage"
