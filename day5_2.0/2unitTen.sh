#!/bin/bash
read -p "Enter a number: " num
if [ ${#num} -eq 1 ]
then
	echo "Units Place: "$(( $num%10 ))
elif [ ${#num} -eq 2 ]
then
	echo "Units Place: "$(( $num%10 ))
	echo "Tens Place: "$(( $(( $num/10 )) %10 ))
elif [ ${#num} -eq 3 ]
then
	echo "Units Place: "$(( $num%10 ))
    echo "Tens Place: "$(( $(( $num/10 )) %10 ))
	echo "Hundreds Place: "$(( $(( $num/100 )) %10 ))
else
	echo "Units Place: "$(( $num%10 ))
    echo "Tens Place: "$(( $(( $num/10 )) %10 ))
    echo "Hundreds Place: "$(( $(( $num/100 )) %10 ))
	echo "Thousands Place: "$(( $(( $num/1000 )) %10 ))
fi
