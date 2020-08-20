#!/bin/bash
read -p "Convert to Celsius(C) or Fahrenheit(F): " type
degC=C
degF=F
function FC {
	case $1 in
	C)
		read -p "Enter value in Fahrenheit (32 F - 212 F ): " val
		if [[ $val -ge 32 && $val -le 212 ]]
		then
			ToC=$(( $(( $degF - 32 )) * 5/9 ))
			echo "Temperature is $ToC Degree Celsius."
		else
			echo "Out of Range, Enter number between 32 F - 212 F."
		fi
		;;
	F)
		read -p "Enter value in Celsius (0 C - 100 C): " val
		if [[ $val -ge 0 && $val -le 100 ]]
		then
			ToF=$(( $(( degC * 9/5 )) + 32 ))
			echo "Temperature is $ToF Fahrenheit."
		else
			echo "Out of Range, Enter value between 0 C - 100 C."
		fi
		;;
	esac
}
FC $type
