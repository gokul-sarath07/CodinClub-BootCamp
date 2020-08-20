#!/bin/bash
read -p "Enter a number: " num
#var=`factor $num`
#echo "The prime factors of "$var
new=$(( $num%2 ))
while [ $new == 0 ]
do
	echo 2
	num=$(( $num/2 ))
done
#for (( i=3; $(( i*i )) <= $num; i=$(( $i+2 )) ))
#do
#	new2=$(( $num%$i ))
#	while [ $new2 == 0 ]
#	do
#		echo $i
#		num=$(( $num/$i ))
#	done
#done
#if [ $num>2 ]
#do
#	echo $num
#done
