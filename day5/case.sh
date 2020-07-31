#!/bin/bash -x
isfull=1
ispart=2
ratePerhr=20
randomcheck=$(( RANDOM%3 ))
case $randomcheck in
	$isfull)
		hour=8
		;;
	$ispart)
		hour=4
		;;
	*)
		hour=0
		;;
esac
salary=$(( hour * ratePerhr ))
echo "Salary: " $salary
