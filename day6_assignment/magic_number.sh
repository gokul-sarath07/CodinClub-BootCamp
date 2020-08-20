#!/bin/bash
read -p "Enter a number between 1 - 100: " num
while [ $num -le 100 ]
do
	if [[ $num -gt $(( $num/2 )) ]]
	then
		((m++))
	fi
	if [[ $num -eq $m ]]
	then
		echo "The number that you thought is "$m
		exit
	fi
done

