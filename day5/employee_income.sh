#!/bin/bash -x
isPresent=1
empRatePerHr=20
empWorkingHrs=8
randomCheck=$(( RANDOM%2 ))
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is present"
	salary=$(( $empWorkingHrs * $empRatePerHr ))
else
	echo "Employee is absent"
	salary=0
fi
