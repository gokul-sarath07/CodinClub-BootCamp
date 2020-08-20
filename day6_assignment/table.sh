#!/bin/bash
read -p "Enter a number: " num
i=1
while [[ $value -lt 256 ]]
do
	value=$(( 2 ** $i ))
	echo "2 ** $i = "$value
	(( i++ ))
done
