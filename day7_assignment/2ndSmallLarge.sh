#!/bin/bash
ct=0
for i in {1..10}
do
	num=$(( RANDOM%900 + 100 ))
	array[$ct]=$num
	ct=$(( $ct + 1 ))
done
echo ${array[@]}
small=${array[0]}
large=${array[0]}
for i in ${array[@]}
do
	if [[ $i -lt $small ]]
	then
		small=$i
	fi
	if [[ $i -gt $large ]]
	then
		large=$i
	fi
done
small2=${array[0]}
large2=${array[0]}
for i in ${array[@]}
do
	if [[ $i -lt $small2 && $i -gt $small ]]
	then
		small2=$i
	fi
	if [[ $i -gt $large2 && $i -lt $large ]]
	then
		large2=$i
	fi
done
echo "Smallest: " $small
echo "2nd Smallest: "$small2
echo "Largest: " $large
echo "2nd Largest: "$large2
