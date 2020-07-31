#!/bin/bash -x
isPartTime=1;
isFullTime=2;
totalsalary=0;
RatePerHr=20;
workingdays=20;

for (( day=1; day<=$workingdays; day++ ))
do
	empcheck=$(( RANDOM%3 ));
		case $empcheck in
			$isFullTime)
				emphr=8
				;;
			$isPartTime)
				emphr=4
				;;
			*)
				emphr=0
				;;
		esac
		salary=$(( $emphr * $RatePerHr ));
		totalsalary=$(( $totalsalary + $salary ));
done
