#!/bin/bash
for i in {1..5}
do
	new=$(( RANDOM%90+10 ))
	echo "Number: " $new
	sum=$(( $sum + $new ))
	count=$(( $count + 1 ))
done
avg=$(( $sum/$count ))
echo "Sum: " $sum
echo "Avg: " $avg
