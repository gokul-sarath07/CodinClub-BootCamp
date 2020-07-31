#!/bin/bash
read -p "Enter a number: " num
case ${#num} in
	1)
		echo "Units Place: "$(( $num%10 ))
		;;
	2)
		echo "Units Place: "$(( $num%10 ))
		echo "Tens Place: "$(( $(( $num/10 )) %10 ))
		;;
	3)
		echo "Units Place: "$(( $num%10 ))
		echo "Tens Place: "$(( $(( $num/10 )) %10 ))
		echo "Hundreds Place: "$(( $(( $num/100 )) %10 ))
		;;
	4)
		echo "Units Place: "$(( $num%10 ))
		echo "Tens Place: "$(( $(( $num/10 )) %10 ))
		echo "Hundreds Place: "$(( $(( $num/100 )) %10 ))
		echo "Thousands Place: "$(( $(( $num/1000 )) %10 ))
		;;
	*)
		echo "Try numbers from 0 to 9999"
esac
