#!/bin/bash
read -p "Enter a number: " num
factorial=1
for var in `seq 1 $num`
do
	factorial=$(( $factorial * $var ))
done
echo "Factorial of $num is $factorial"
