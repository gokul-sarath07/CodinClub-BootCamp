#!/bin/bash
ct=0
for i in {1..10}
do
	num=$(( RANDOM%900 + 100 ))
	array[$ct]=$num
	ct=$(( $ct + 1 ))
done
small2=$( printf '%s\n' "${array[@]}" | sort -nr | tail -2 | head -1 )
large2=$( printf '%s\n' "${array[@]}" | sort -n | tail -2 | head -1 )

echo "The array is "${array[@]}
echo "2nd Smallest: "$small2
echo "2nd Largest: "$large2
