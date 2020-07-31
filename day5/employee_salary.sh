#!/bin/bash -x
isFulltime=1
isParttime=2
FullHr=8
RatePerHr=20
HalfHr=4
randomCheck=$(( RANDOM%3 ))
if [ $isFulltime -eq $randomCheck ]
then
	echo "Employee is full time"
	salary=$(( $FullHr * $RatePerHr ))
elif [ $isParttime -eq $randomCheck ]
then
	echo "Employee is part time"
	salary=$(( $HalfHr * $RatePerHr ))
else
	echo "Employee is absent"
	salary=0
fi
