#!/bin/bash
read -p "Enter three integer numbers: " a b c
sum=$(( $a+$b+$c ))
if [[ $sum -eq 0 ]]
then
	echo "Sum is ZERO!!"
else
	echo "Sum is "$sum
	echo "Try again!"
fi
