#!/bin/bash -x

PRESENT=1;
PART_TIME=2;

declare -A dailyWage;

function getWorkingHour() {

	case $1 in
		$PRESENT)
		wHour=8;
		;;

		$PART_TIME)
		wHour=4;
		;;

		*)
		wHour=0;
		;;
	esac;
	echo $wHour;
}

MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;
PAY_PER_HOUR=20;

totalWorkingHour=0;
day=0;
while [[ $day -lt $MAX_WORKING_DAY && $(($totalWorkingHour+4)) -lt $MAX_WORKING_HOUR ]]
do
	workingHour=$( getWorkingHour $((RANDOM%3)) );
	totalWorkingHour=$(($totalWorkingHour + $workingHour));
	dailyWage[Day$day]=$(($workingHour * $PAY_PER_HOUR));
	((day++));
done

salary=$(($totalWorkingHour * $PAY_PER_HOUR));

echo "Employee monthly wage earned : $salary $ (Total working hour : $totalWorkingHour)"

echo ${dailyWage[@]};
echo ${!dailyWage[@]};
echo ${#dailyWage[@]};


echo "-------------for loop------------"
for ((i=0;i<${#dailyWage[@]};i++))
do
	echo "Day $i : " ${dailyWage[Day$i]};
done

echo "------------for each loop--------------"

for key in ${!dailyWage[@]}
do
	echo "$key : " ${dailyWage[$key]};
done
