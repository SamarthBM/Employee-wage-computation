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

declare -A wage
wage_per_hour=20
max_hours=100
max_days=20

total_working_days=0
total_working_hours=0
total_wage=0

echo "Day:		Daily wage:		Total wage:"

while [ $total_working_hours -lt $max_hours -a $total_working_days -lt $max_days ]
do
        (( total_working_days++ ))

	attendance=$((RANDOM%3))

	working_hour=$(work_hours $attendance)

	total_working_hours=$((total_working_hours+$working_hour ))

	daily_wage=$(($working_hour*$wage_per_hour))
	total_wage=$((total_wage+$daily_wage))
	wage[$daily_wage]=$total_wage
	echo "$total_working_days		 $daily_wage			$total_wage"
done
