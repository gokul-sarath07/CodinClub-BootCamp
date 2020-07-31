#!/bin/bash
read -p "Enter Year: " year
divBy4=$(( $year%4 ))
divBy100=$(( $year%100 ))
divBy400=$(( $year%400 ))
if [ $divBy4 -eq 0 ]
then
	if [ $divBy100 -eq 0 ]
	then
		if [ $divBy400 -eq 0 ]
		then
			echo "$year is a leap year"
		else
			echo "$year is not a leap year"
		fi
	else
		echo "$year is a leap year"
	fi
else
	echo "$year is not a leap year"
fi
