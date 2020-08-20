#!/bin/bash
ct=0
for (( i=1; i<=100; i++ ))
do
	if [[ $(( $i%11 )) -eq 0 ]]
	then
		array[$ct]=$i
		((ct++))
	fi
done
echo "Array is "${array[@]}
