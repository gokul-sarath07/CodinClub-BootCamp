#!/bin/bash
read -p "Enter a number: " n
limit=$(( 2**$n ))
for (( i=1; i<=$limit; i++ ))
do
	echo "2 x $i = " $(( 2*$i ))
done
