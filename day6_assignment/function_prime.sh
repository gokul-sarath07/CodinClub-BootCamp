#!/bin/bash
read -p "Enter a number: " num
function getprime {
	for (( i=2; i<$num; i++ ))
	do
		if [ $(( $num%$i )) == "0" ]
		then
			echo "Not Prime"
			exit
		fi
	done
	echo "Prime"
}
function palindrome {
	temp=$num
	sum=0
	while [ $num -gt 0 ]
	do
		last=$(( $num%10 ))
		sum=$(( $(( $sum * 10 )) + $last ))
		num=$(( $num/10 ))
	done
	if [[ $sum -eq $temp ]]
	then
		echo "Palindrome"
	else
		echo "Not Palindrome"
	fi
}
pal=$( palindrome num )
pri=$( getprime num )
if [[ "$pri" -eq "Prime" && "$pal" -eq "Palindrome" ]]
then
	echo "Both Prime and Palindrome"
else
	echo "Not Both"
fi
echo $pal
echo $pri
