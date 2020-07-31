#!/bin/bash
read -p "Enter 3 numbers: " a b c
array[0]=$(( a + b * c ))
array[1]=$(( a % b + c ))
array[2]=$(( c + a / b ))
array[3]=$(( a * b + c ))
echo "Array is: " ${array[@]}
greater=${array[0]}
smaller=${array[0]}
for i in "${array[@]}"
do
	if [ $i -gt $greater ]
	then
		greater=$i
	fi
	if [ $i -lt $smaller ]
	then
		smaller=$i
	fi
done
echo "Greater: " $greater
echo "Smaller: " $smaller
