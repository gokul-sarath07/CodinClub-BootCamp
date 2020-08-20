#!/bin/bash
read -p "Enter a number: " num
ct=0
for (( i=2; i*i<=$num; i++ ))
do
	for (( i=2; i<=$num; i++ ))
	do
		if [[ $(( $num%$i )) -eq 0 ]]
		then
			prime=1
			for (( j=2; j<=$i/2; j++ ))
			do
				if [[ $(( $i%$j )) -eq 0 ]]
				then
					prime=0
					continue
				fi
			done
			if [[ $prime -eq 1 ]]
			then
				array[$ct]=$i
				((ct++))
			fi
		fi
	done
done
echo "Prime Factors of $num are "${array[@]}
