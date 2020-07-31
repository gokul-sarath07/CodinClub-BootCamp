#!/bin/bash -x
isFulltime=1
isParttime=2
randomCheck=$(( RANDOM%3 ))
if [ $isFulltime -eq $randomCheck ]
then
	echo "Employee is full time"
elif [ $isParttime -eq $randomCheck ]
then
	echo "Employee is part time"
else
	echo "Employee is absent"
fi
